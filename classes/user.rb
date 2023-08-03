this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require './lib/users_pb'
require './lib/users_services_pb'
require './core/tinkoff_invest_api_core'

class User < TinkoffInvestApiCore
  def initialize
    super
    @stub = create_stub('UsersService')
  end

  attr_reader :stub, :account_id

  def get_accounts
    stub.get_accounts(GetAccountsRequest.new)
  end

  def get_margin_attributes(account_id = nil)
    stub.get_margin_attributes(GetMarginAttributesRequest.new(account_id: account_id))
  end

  def get_user_tariff
    stub.get_user_tariff(GetUserTariffRequest.new)
  end

  def get_info
    stub.get_info(GetInfoRequest.new)
  end
end

# pp(User.new.get_accounts)
