this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'

require './lib/marketdata_pb'
require './lib/marketdata_services_pb'
require './core/tinkoff_invest_api_core'

class MarketData < TinkoffInvestApiCore
  def initialize
    super
    @market_data_stub = create_stub('MarketDataService')
    @market_data_stream_stub = create_stub('MarketDataStreamService')
  end

  SUBSCRIBE_REQUESTS = { candles: :subscribe_candles_request,
                         order_book: :subscribe_order_book_request,
                         trades: :subscribe_trades_request,
                         info: :subscribe_info_request,
                         last_price: :subscribe_last_price_request }.freeze

  attr_reader :market_data_stub, :market_data_stream_stub

  def share_by(code)
    market_data_stub.share_by(request(
                                'GetLastPricesRequest', { id_type: 2, class_code: 'TQBR', id: code }
                              ))
  end

  def get_last_prices(*instrument_id)
    market_data_stub.get_last_prices(request('GetLastPricesRequest', { instrument_id: [*instrument_id] }))
  end

  def get_order_book(instrument_id)
    market_data_stub.get_order_book(request('GetOrderBookRequest', { instrument_id: instrument_id, depth: 30 }))
  end

  def server_side_stream(*ids)
    req = request('MarketDataServerSideStreamRequest',
                  { SUBSCRIBE_REQUESTS[:last_price] => request_iterator(ids) })
    market_data_stream_stub.market_data_server_side_stream(req)
  end

  def bi_directional_stream; end

  private

  def request_iterator(instrument_ids)
    instruments = instrument_ids.map { |id| { instrument_id: id } }
    SubscribeLastPriceRequest.new(subscription_action: 1, instruments: instruments)
  end
end
# pp('last price:', MarketData.new.get_last_prices('0da66728-6c30-44c4-9264-df8fac2467ee')['last_prices'][0]['price'])
# pp('buy:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['bids'].map(&:quantity).sum)
# pp('sell:',
#    MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['asks'].map(&:quantity).sum)
MarketData.new.server_side_stream('0da66728-6c30-44c4-9264-df8fac2467ee',
                                  '6c97b684-ae84-435c-96fd-e20dc9197999').each do |item|
  # Handle each incoming message from the server
  puts "Received message from server: #{item.to_h.dig(:last_price, :price)}"
end

# b83ab195-dcd2-4d44-b9bf-27fa294f19a0
# pp('bids:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['bids'])

# pp 'asks:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['asks']
