this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require './lib/sandbox_services_pb'
require './lib/common_pb'
require './lib/marketdata_pb'
require './core/tinkoff_invest_api_core'

class MarketData < TinkoffInvestApiCore
  def initialize
    @stream_service_stub = Tinkoff::Public::Invest::Api::Contract::V1::MarketDataStreamService::Stub.new(host,
                                                                                                         credentials)
    @market_data_service_stub = Tinkoff::Public::Invest::Api::Contract::V1::MarketDataService::Stub.new(host,
                                                                                                        credentials)
  end

  attr_reader :stub, :account_id

  def get_last_prices
    stub.get_last_prices(Tinkoff::Public::Invest::Api::Contract::V1::GetCandlesRequest.new(instrument_id: []),
                         { metadata: metadata })
  end
end
