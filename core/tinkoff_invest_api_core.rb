# frozen_string_literal = true

require 'yaml'
require 'grpc'
require_relative './stub_wrapper'

CONFIG = YAML.load_file('./config.yml')

class TinkoffInvestApiCore
  include Tinkoff::Public::Invest::Api::Contract::V1

  def initialize
    @production_host = CONFIG['production']['endpoint']
    @credentials = GRPC::Core::ChannelCredentials.new
    @namespace = Tinkoff::Public::Invest::Api::Contract::V1
  end

  private

  attr_reader :production_host, :credentials, :namespace

  def create_stub(service)
    stub = namespace.const_get(service)::Stub.new(production_host, credentials)
    StubWrapper.new(stub)
  end

  def host
    CONFIG['production']['endpoint']
  end
end
