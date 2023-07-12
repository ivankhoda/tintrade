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

  attr_reader :market_data_stub, :market_data_stream_stub

  def share_by(code)
    market_data_stub.share_by(InstrumentRequest.new(id_type: 2, class_code: 'TQBR', id: code))
  end

  def get_last_prices(*instrument_id)
    market_data_stub.get_last_prices(GetLastPricesRequest.new(instrument_id: [*instrument_id]))
  end

  def get_order_book(instrument_id)
    market_data_stub.get_order_book(GetOrderBookRequest.new(instrument_id: instrument_id, depth: 30))
  end

  def server_side_stream
    request_iterator = SubscribeLastPriceRequest.new(
      subscription_action: 1, instruments: [
        { instrument_id: '0da66728-6c30-44c4-9264-df8fac2467ee' }
      ]
    )

    req = MarketDataServerSideStreamRequest.new(subscribe_last_price_request: request_iterator)
    market_data_stream_stub.market_data_server_side_stream(req)
  end

  def bi_directional_stream; end
end
pp('last price:', MarketData.new.get_last_prices('0da66728-6c30-44c4-9264-df8fac2467ee')['last_prices'][0]['price'])
pp('buy:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['bids'].map(&:quantity).sum)
pp('sell:',
   MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['asks'].map(&:quantity).sum)
# MarketData.new.server_side_stream.each do |item|
#   # Handle each incoming message from the server
#   puts "Received message from server: #{item}"
# end

# b83ab195-dcd2-4d44-b9bf-27fa294f19a0
# pp('bids:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['bids'])
# pp 'asks:', MarketData.new.get_order_book('0da66728-6c30-44c4-9264-df8fac2467ee')['asks']
