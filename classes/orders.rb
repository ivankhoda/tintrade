require 'grpc'
require './lib/orders_pb'
require './lib/orders_services_pb'
require './core/tinkoff_invest_api_core'

class Orders < TinkoffInvestApiCore
  def initialize
    super
    @stub = create_stub('OrdersService')
  end

  attr_reader :stub

  def post_order
    # figi	string	Deprecated Figi-идентификатор инструмента. Необходимо использовать instrument_id.
    #   quantity	int64	Количество лотов.
    #     price	Quotation	Цена за 1 инструмент. Для получения стоимости лота требуется умножить на лотность инструмента. Игнорируется для рыночных поручений.
    #   direction	OrderDirection	Направление операции.
    #     account_id	string	Номер счёта.
    #       order_type	OrderType	Тип заявки.
    #         order_id	string	Идентификатор запроса выставления поручения для целей идемпотентности в формате UID. Максимальная длина 36 символов.
    #   instrument_id	string	Идентификатор инструмента, принимает значения Figi или Instrument_uid.
    stub.post_order(request('PostOrderRequest', { figi: 'BBG00475KKY8',
                                                  quantity: 1,
                                                  price: { units: 1900, nano: 90_000 },
                                                  direction: 2,
                                                  account_id: '2061617664',
                                                  order_type: 0,
                                                  order_id: SecureRandom.uuid,
                                                  instrument_id: '0da66728-6c30-44c4-9264-df8fac2467ee' }))
  end
end
