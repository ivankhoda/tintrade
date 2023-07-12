# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: stoporders.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'common_pb'


descriptor_data = "\n\x10stoporders.proto\x12%tinkoff.public.invest.api.contract.v1\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x0c\x63ommon.proto\"\xc7\x03\n\x14PostStopOrderRequest\x12\x10\n\x04\x66igi\x18\x01 \x01(\tB\x02\x18\x01\x12\x10\n\x08quantity\x18\x02 \x01(\x03\x12\x19\n\x05price\x18\x03 \x01(\x0b\x32\n.Quotation\x12\x1e\n\nstop_price\x18\x04 \x01(\x0b\x32\n.Quotation\x12L\n\tdirection\x18\x05 \x01(\x0e\x32\x39.tinkoff.public.invest.api.contract.v1.StopOrderDirection\x12\x12\n\naccount_id\x18\x06 \x01(\t\x12W\n\x0f\x65xpiration_type\x18\x07 \x01(\x0e\x32>.tinkoff.public.invest.api.contract.v1.StopOrderExpirationType\x12M\n\x0fstop_order_type\x18\x08 \x01(\x0e\x32\x34.tinkoff.public.invest.api.contract.v1.StopOrderType\x12/\n\x0b\x65xpire_date\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rinstrument_id\x18\n \x01(\t\".\n\x15PostStopOrderResponse\x12\x15\n\rstop_order_id\x18\x01 \x01(\t\"*\n\x14GetStopOrdersRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\"^\n\x15GetStopOrdersResponse\x12\x45\n\x0bstop_orders\x18\x01 \x03(\x0b\x32\x30.tinkoff.public.invest.api.contract.v1.StopOrder\"C\n\x16\x43\x61ncelStopOrderRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12\x15\n\rstop_order_id\x18\x02 \x01(\t\"C\n\x17\x43\x61ncelStopOrderResponse\x12(\n\x04time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xe7\x03\n\tStopOrder\x12\x15\n\rstop_order_id\x18\x01 \x01(\t\x12\x16\n\x0elots_requested\x18\x02 \x01(\x03\x12\x0c\n\x04\x66igi\x18\x03 \x01(\t\x12L\n\tdirection\x18\x04 \x01(\x0e\x32\x39.tinkoff.public.invest.api.contract.v1.StopOrderDirection\x12\x10\n\x08\x63urrency\x18\x05 \x01(\t\x12H\n\norder_type\x18\x06 \x01(\x0e\x32\x34.tinkoff.public.invest.api.contract.v1.StopOrderType\x12/\n\x0b\x63reate_date\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x38\n\x14\x61\x63tivation_date_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x33\n\x0f\x65xpiration_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1a\n\x05price\x18\n \x01(\x0b\x32\x0b.MoneyValue\x12\x1f\n\nstop_price\x18\x0b \x01(\x0b\x32\x0b.MoneyValue\x12\x16\n\x0einstrument_uid\x18\x0c \x01(\t*w\n\x12StopOrderDirection\x12$\n STOP_ORDER_DIRECTION_UNSPECIFIED\x10\x00\x12\x1c\n\x18STOP_ORDER_DIRECTION_BUY\x10\x01\x12\x1d\n\x19STOP_ORDER_DIRECTION_SELL\x10\x02*\xa5\x01\n\x17StopOrderExpirationType\x12*\n&STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED\x10\x00\x12/\n+STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_CANCEL\x10\x01\x12-\n)STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_DATE\x10\x02*\x90\x01\n\rStopOrderType\x12\x1f\n\x1bSTOP_ORDER_TYPE_UNSPECIFIED\x10\x00\x12\x1f\n\x1bSTOP_ORDER_TYPE_TAKE_PROFIT\x10\x01\x12\x1d\n\x19STOP_ORDER_TYPE_STOP_LOSS\x10\x02\x12\x1e\n\x1aSTOP_ORDER_TYPE_STOP_LIMIT\x10\x03\x32\xc0\x03\n\x11StopOrdersService\x12\x8a\x01\n\rPostStopOrder\x12;.tinkoff.public.invest.api.contract.v1.PostStopOrderRequest\x1a<.tinkoff.public.invest.api.contract.v1.PostStopOrderResponse\x12\x8a\x01\n\rGetStopOrders\x12;.tinkoff.public.invest.api.contract.v1.GetStopOrdersRequest\x1a<.tinkoff.public.invest.api.contract.v1.GetStopOrdersResponse\x12\x90\x01\n\x0f\x43\x61ncelStopOrder\x12=.tinkoff.public.invest.api.contract.v1.CancelStopOrderRequest\x1a>.tinkoff.public.invest.api.contract.v1.CancelStopOrderResponseBa\n\x1cru.tinkoff.piapi.contract.v1P\x01Z\x0c./;investapi\xa2\x02\x05TIAPI\xaa\x02\x14Tinkoff.InvestApi.V1\xca\x02\x11Tinkoff\\Invest\\V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["Quotation", "common.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Tinkoff
  module Public
    module Invest
      module Api
        module Contract
          module V1
            PostStopOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.PostStopOrderRequest").msgclass
            PostStopOrderResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.PostStopOrderResponse").msgclass
            GetStopOrdersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.GetStopOrdersRequest").msgclass
            GetStopOrdersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.GetStopOrdersResponse").msgclass
            CancelStopOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.CancelStopOrderRequest").msgclass
            CancelStopOrderResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.CancelStopOrderResponse").msgclass
            StopOrder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.StopOrder").msgclass
            StopOrderDirection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.StopOrderDirection").enummodule
            StopOrderExpirationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.StopOrderExpirationType").enummodule
            StopOrderType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tinkoff.public.invest.api.contract.v1.StopOrderType").enummodule
          end
        end
      end
    end
  end
end
