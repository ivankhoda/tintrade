require 'grpc'
require './lib/orders_pb'
require './lib/orders_services_pb'
require './core/tinkoff_invest_api_core'

require 'securerandom'

class Orders < TinkoffInvestApiCore
  def initialize
    super
    @stub = create_stub('OrdersService')
  end
  # Order type
  ORDER_TYPE_UNSPECIFIED = 0	# Значение не указано
  ORDER_TYPE_LIMIT = 1	# Лимитная
  ORDER_TYPE_MARKET = 2	# Рыночная
  ORDER_TYPE_BESTPRICE = 3	# Лучшая цена

  ORDER_DIRECTION_UNSPECIFIED	= 0	# Значение не указано
  ORDER_DIRECTION_BUY	= 1	# Покупка
  ORDER_DIRECTION_SELL =	2	# Продажа

  attr_reader :stub

  def post_order
    stub.post_order(request('PostOrderRequest', {
                              quantity: 1,
                              price: { units: 1840, nano: 0 },
                              direction: Orders::ORDER_DIRECTION_SELL,
                              account_id: CONFIG['account']['id'],
                              order_type: 1,
                              order_id: SecureRandom.uuid,
                              instrument_id: '0da66728-6c30-44c4-9264-df8fac2467ee'
                            }))
  end

  def cancel_order
    stub.cancel_order(request('CancelOrderRequest',
                              { account_id: CONFIG['account']['id'],
                                order_id: '37583007829' }))
  end
end

pp(Orders.new.cancel_order)
