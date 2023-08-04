# frozen_string_literal = true

class StubWrapper
  def initialize(stub)
    @stub = stub
    @metadata = { metadata: { authorization: "Bearer #{key}" } }
  end

  def method_missing(name, *args)
    stub.send(name, *args, metadata)
  end

  private

  attr_reader :stub, :metadata, :stub_methods

  def key
    ENV['MODE'] == 'full' ? full_access_api_key : api_key
  end

  def api_key
    CONFIG['production']['api_key']
  end

  def full_access_api_key
    CONFIG['production']['full_access_key']
  end
end
