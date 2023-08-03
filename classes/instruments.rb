this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'

require './lib/instruments_pb'
require './lib/instruments_services_pb'
require './core/tinkoff_invest_api_core'

class Instruments < TinkoffInvestApiCore
  #
  INSTRUMENT_ID_UNSPECIFIED =	0	# Значение не определено.
  INSTRUMENT_ID_TYPE_FIGI = 1	# Figi.
  INSTRUMENT_ID_TYPE_TICKER =	2	# Ticker.
  INSTRUMENT_ID_TYPE_UID = 3	# Уникальный идентификатор.
  INSTRUMENT_ID_TYPE_POSITION_UID = 4	# Идентификатор позиции.

  # InstrumentStatus
  INSTRUMENT_STATUS_UNSPECIFIED = 0	# Значение не определено.
  INSTRUMENT_STATUS_BASE = 1	# Базовый список инструментов (по умолчанию).
  # Инструменты доступные для торговли через TINKOFF INVEST API.
  INSTRUMENT_STATUS_ALL = 2 #	Список всех инструментов.

  def initialize
    super
    @stub = create_stub('InstrumentsService')
  end

  attr_reader :stub

  def share_by(id_type, class_code, id)
    stub.share_by(request('InstrumentsRequest', { id_type: id_type, class_code: class_code, id: id }))
  end

  def shares(instrument_status)
    stub.shares(request('InstrumentsRequest', { instrument_status: instrument_status }))
  end
end

pp(Instruments.new.shares(Instruments::INSTRUMENT_STATUS_BASE).to_h[:instruments].find { |x| x[:ticker] == 'NVTK' })
# pp(Instruments.new.share_by)
