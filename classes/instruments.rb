this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'

require './lib/instruments_pb'
require './lib/instruments_services_pb'
require './core/tinkoff_invest_api_core'

class Instruments < TinkoffInvestApiCore
  def initialize
    super
    create_stub('InstrumentsService')
    @stub = create_stub('InstrumentsService')
  end

  attr_reader :stub

  def share_by(code)
    stub.share_by(InstrumentRequest.new(id_type: 2, class_code: 'TQBR', id: code))
  end

  def shares
    stub.shares(InstrumentsRequest.new(instrument_status: 1))
  end
end

pp(Instruments.new.shares.)
