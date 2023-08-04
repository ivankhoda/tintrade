# frozen_string_literal = true

require 'yaml'
require 'grpc'
require_relative './stub_wrapper'

CONFIG = YAML.load_file('./config.yml')

class TinkoffInvestApiCore
  include Tinkoff::Public::Invest::Api::Contract::V1

  def initialize
    @credentials = GRPC::Core::ChannelCredentials.new
    @namespace = Tinkoff::Public::Invest::Api::Contract::V1
  end

  private

  attr_reader :credentials, :namespace

  def create_stub(service)
    stub = namespace.const_get(service)::Stub.new(host, credentials)
    StubWrapper.new(stub)
  end

  def request(name, args)
    namespace.const_get(name).new(args)
  end

  def host
    CONFIG['production']['endpoint']
  end
end
