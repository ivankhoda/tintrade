# frozen_string_literal = true

class StubWrapper
  def initialize(stub)
    @stub = stub
    @metadata = { metadata: { authorization: "Bearer #{api_key}" } }
  end

  def method_missing(name, *args)
    stub.send(name, *args, metadata)
  end

  private

  attr_reader :stub, :metadata, :stub_methods

  def api_key
    CONFIG['production']['api_key']
  end
end
