this_dir = __dir__
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)
require 'rubygems'
require 'ruby-prof'

require 'grpc'

require './lib/users_pb'
require './lib/users_services_pb'
require './core/tinkoff_invest_api_core'
require './profilers/profiler'

class User < TinkoffInvestApiCore
  def initialize
    super
    @stub = create_stub('UsersService')
  end

  attr_reader :stub, :account_id

  def get_accounts
    stub.get_accounts(request('GetAccountsRequest'))
  end

  def get_margin_attributes(account_id = nil)
    stub.get_margin_attributes(request('GetMarginAttributesRequest', { account_id: account_id }))
  end

  def get_user_tariff
    stub.get_user_tariff(request('GetUserTariffRequest'))
  end

  def get_info
    stub.get_info(request('GetInfoRequest'))
  end
end

profile = RubyProf::Profile.new

result = profile.profile do
  profile.measure_mode = RubyProf::PROCESS_TIME
  User.new.get_accounts
end
printer = RubyProf::CallTreePrinter.new(result)
printer.print(path: 'profilers/ruby_prof_reports', profile: 'callgrind')
