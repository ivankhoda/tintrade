# frozen_string_literal: true

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: users.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require_relative 'common_pb'

descriptor_data = "\n\x0busers.proto\x12%tinkoff.public.invest.api.contract.v1\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x0c\x63ommon.proto\"\x14\n\x12GetAccountsRequest\"W\n\x13GetAccountsResponse\x12@\n\x08\x61\x63\x63ounts\x18\x01 \x03(\x0b\x32..tinkoff.public.invest.api.contract.v1.Account\"\xd7\x02\n\x07\x41\x63\x63ount\x12\n\n\x02id\x18\x01 \x01(\t\x12@\n\x04type\x18\x02 \x01(\x0e\x32\x32.tinkoff.public.invest.api.contract.v1.AccountType\x12\x0c\n\x04name\x18\x03 \x01(\t\x12\x44\n\x06status\x18\x04 \x01(\x0e\x32\x34.tinkoff.public.invest.api.contract.v1.AccountStatus\x12/\n\x0bopened_date\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63losed_date\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12H\n\x0c\x61\x63\x63\x65ss_level\x18\x07 \x01(\x0e\x32\x32.tinkoff.public.invest.api.contract.v1.AccessLevel\"0\n\x1aGetMarginAttributesRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\"\x91\x02\n\x1bGetMarginAttributesResponse\x12%\n\x10liquid_portfolio\x18\x01 \x01(\x0b\x32\x0b.MoneyValue\x12$\n\x0fstarting_margin\x18\x02 \x01(\x0b\x32\x0b.MoneyValue\x12#\n\x0eminimal_margin\x18\x03 \x01(\x0b\x32\x0b.MoneyValue\x12+\n\x17\x66unds_sufficiency_level\x18\x04 \x01(\x0b\x32\n.Quotation\x12,\n\x17\x61mount_of_missing_funds\x18\x05 \x01(\x0b\x32\x0b.MoneyValue\x12%\n\x10\x63orrected_margin\x18\x06 \x01(\x0b\x32\x0b.MoneyValue\"\x16\n\x14GetUserTariffRequest\"\xab\x01\n\x15GetUserTariffResponse\x12G\n\x0cunary_limits\x18\x01 \x03(\x0b\x32\x31.tinkoff.public.invest.api.contract.v1.UnaryLimit\x12I\n\rstream_limits\x18\x02 \x03(\x0b\x32\x32.tinkoff.public.invest.api.contract.v1.StreamLimit\"7\n\nUnaryLimit\x12\x18\n\x10limit_per_minute\x18\x01 \x01(\x05\x12\x0f\n\x07methods\x18\x02 \x03(\t\";\n\x0bStreamLimit\x12\r\n\x05limit\x18\x01 \x01(\x05\x12\x0f\n\x07streams\x18\x02 \x03(\t\x12\x0c\n\x04open\x18\x03 \x01(\x05\"\x10\n\x0eGetInfoRequest\"l\n\x0fGetInfoResponse\x12\x13\n\x0bprem_status\x18\x01 \x01(\x08\x12\x13\n\x0bqual_status\x18\x02 \x01(\x08\x12\x1f\n\x17qualified_for_work_with\x18\x03 \x03(\t\x12\x0e\n\x06tariff\x18\x04 \x01(\t*\x80\x01\n\x0b\x41\x63\x63ountType\x12\x1c\n\x18\x41\x43\x43OUNT_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14\x41\x43\x43OUNT_TYPE_TINKOFF\x10\x01\x12\x1c\n\x18\x41\x43\x43OUNT_TYPE_TINKOFF_IIS\x10\x02\x12\x1b\n\x17\x41\x43\x43OUNT_TYPE_INVEST_BOX\x10\x03*{\n\rAccountStatus\x12\x1e\n\x1a\x41\x43\x43OUNT_STATUS_UNSPECIFIED\x10\x00\x12\x16\n\x12\x41\x43\x43OUNT_STATUS_NEW\x10\x01\x12\x17\n\x13\x41\x43\x43OUNT_STATUS_OPEN\x10\x02\x12\x19\n\x15\x41\x43\x43OUNT_STATUS_CLOSED\x10\x03*\xa1\x01\n\x0b\x41\x63\x63\x65ssLevel\x12$\n ACCOUNT_ACCESS_LEVEL_UNSPECIFIED\x10\x00\x12$\n ACCOUNT_ACCESS_LEVEL_FULL_ACCESS\x10\x01\x12\"\n\x1e\x41\x43\x43OUNT_ACCESS_LEVEL_READ_ONLY\x10\x02\x12\"\n\x1e\x41\x43\x43OUNT_ACCESS_LEVEL_NO_ACCESS\x10\x03\x32\xbb\x04\n\x0cUsersService\x12\x84\x01\n\x0bGetAccounts\x12\x39.tinkoff.public.invest.api.contract.v1.GetAccountsRequest\x1a:.tinkoff.public.invest.api.contract.v1.GetAccountsResponse\x12\x9c\x01\n\x13GetMarginAttributes\x12\x41.tinkoff.public.invest.api.contract.v1.GetMarginAttributesRequest\x1a\x42.tinkoff.public.invest.api.contract.v1.GetMarginAttributesResponse\x12\x8a\x01\n\rGetUserTariff\x12;.tinkoff.public.invest.api.contract.v1.GetUserTariffRequest\x1a<.tinkoff.public.invest.api.contract.v1.GetUserTariffResponse\x12x\n\x07GetInfo\x12\x35.tinkoff.public.invest.api.contract.v1.GetInfoRequest\x1a\x36.tinkoff.public.invest.api.contract.v1.GetInfoResponseBa\n\x1cru.tinkoff.piapi.contract.v1P\x01Z\x0c./;investapi\xa2\x02\x05TIAPI\xaa\x02\x14Tinkoff.InvestApi.V1\xca\x02\x11Tinkoff\\Invest\\V1b\x06proto3"

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
    ['google.protobuf.Timestamp', 'google/protobuf/timestamp.proto'],
    ['MoneyValue', 'common.proto']
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn 'Each proto file must use a consistent fully-qualified name.'
  warn 'This will become an error in the next major version.'
end

module Tinkoff
  module Public
    module Invest
      module Api
        module Contract
          module V1
            GetAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetAccountsRequest').msgclass
            GetAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetAccountsResponse').msgclass
            Account = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.Account').msgclass
            GetMarginAttributesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetMarginAttributesRequest').msgclass
            GetMarginAttributesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetMarginAttributesResponse').msgclass
            GetUserTariffRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetUserTariffRequest').msgclass
            GetUserTariffResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetUserTariffResponse').msgclass
            UnaryLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.UnaryLimit').msgclass
            StreamLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.StreamLimit').msgclass
            GetInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetInfoRequest').msgclass
            GetInfoResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.GetInfoResponse').msgclass
            AccountType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.AccountType').enummodule
            AccountStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.AccountStatus').enummodule
            AccessLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup('tinkoff.public.invest.api.contract.v1.AccessLevel').enummodule
          end
        end
      end
    end
  end
end
