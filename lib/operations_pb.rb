# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: operations.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'common_pb'


descriptor_data = "\n\x10operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x0c\x63ommon.proto\"\xa7\x01\n\x11OperationsRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12(\n\x04\x66rom\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12&\n\x02to\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1e\n\x05state\x18\x04 \x01(\x0e\x32\x0f.OperationState\x12\x0c\n\x04\x66igi\x18\x05 \x01(\t\"4\n\x12OperationsResponse\x12\x1e\n\noperations\x18\x01 \x03(\x0b\x32\n.Operation\"\xb2\x03\n\tOperation\x12\n\n\x02id\x18\x01 \x01(\t\x12\x1b\n\x13parent_operation_id\x18\x02 \x01(\t\x12\x10\n\x08\x63urrency\x18\x03 \x01(\t\x12\x1c\n\x07payment\x18\x04 \x01(\x0b\x32\x0b.MoneyValue\x12\x1a\n\x05price\x18\x05 \x01(\x0b\x32\x0b.MoneyValue\x12\x1e\n\x05state\x18\x06 \x01(\x0e\x32\x0f.OperationState\x12\x10\n\x08quantity\x18\x07 \x01(\x03\x12\x15\n\rquantity_rest\x18\x08 \x01(\x03\x12\x0c\n\x04\x66igi\x18\t \x01(\t\x12\x17\n\x0finstrument_type\x18\n \x01(\t\x12(\n\x04\x64\x61te\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0c\n\x04type\x18\x0c \x01(\t\x12&\n\x0eoperation_type\x18\r \x01(\x0e\x32\x0e.OperationType\x12\x1f\n\x06trades\x18\x0e \x03(\x0b\x32\x0f.OperationTrade\x12\x11\n\tasset_uid\x18\x10 \x01(\t\x12\x14\n\x0cposition_uid\x18\x11 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x12 \x01(\t\"\x7f\n\x0eOperationTrade\x12\x10\n\x08trade_id\x18\x01 \x01(\t\x12-\n\tdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x10\n\x08quantity\x18\x03 \x01(\x03\x12\x1a\n\x05price\x18\x04 \x01(\x0b\x32\x0b.MoneyValue\"\x89\x01\n\x10PortfolioRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12\x33\n\x08\x63urrency\x18\x02 \x01(\x0e\x32!.PortfolioRequest.CurrencyRequest\",\n\x0f\x43urrencyRequest\x12\x07\n\x03RUB\x10\x00\x12\x07\n\x03USD\x10\x01\x12\x07\n\x03\x45UR\x10\x02\"\xf9\x03\n\x11PortfolioResponse\x12(\n\x13total_amount_shares\x18\x01 \x01(\x0b\x32\x0b.MoneyValue\x12\'\n\x12total_amount_bonds\x18\x02 \x01(\x0b\x32\x0b.MoneyValue\x12%\n\x10total_amount_etf\x18\x03 \x01(\x0b\x32\x0b.MoneyValue\x12,\n\x17total_amount_currencies\x18\x04 \x01(\x0b\x32\x0b.MoneyValue\x12)\n\x14total_amount_futures\x18\x05 \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\x0e\x65xpected_yield\x18\x06 \x01(\x0b\x32\n.Quotation\x12%\n\tpositions\x18\x07 \x03(\x0b\x32\x12.PortfolioPosition\x12\x12\n\naccount_id\x18\x08 \x01(\t\x12)\n\x14total_amount_options\x18\t \x01(\x0b\x32\x0b.MoneyValue\x12$\n\x0ftotal_amount_sp\x18\n \x01(\x0b\x32\x0b.MoneyValue\x12+\n\x16total_amount_portfolio\x18\x0b \x01(\x0b\x32\x0b.MoneyValue\x12\x34\n\x11virtual_positions\x18\x0c \x03(\x0b\x32\x19.VirtualPortfolioPosition\"&\n\x10PositionsRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\"\xe3\x01\n\x11PositionsResponse\x12\x1a\n\x05money\x18\x01 \x03(\x0b\x32\x0b.MoneyValue\x12\x1c\n\x07\x62locked\x18\x02 \x03(\x0b\x32\x0b.MoneyValue\x12(\n\nsecurities\x18\x03 \x03(\x0b\x32\x14.PositionsSecurities\x12\"\n\x1alimits_loading_in_progress\x18\x04 \x01(\x08\x12\"\n\x07\x66utures\x18\x05 \x03(\x0b\x32\x11.PositionsFutures\x12\"\n\x07options\x18\x06 \x03(\x0b\x32\x11.PositionsOptions\"+\n\x15WithdrawLimitsRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\"z\n\x16WithdrawLimitsResponse\x12\x1a\n\x05money\x18\x01 \x03(\x0b\x32\x0b.MoneyValue\x12\x1c\n\x07\x62locked\x18\x02 \x03(\x0b\x32\x0b.MoneyValue\x12&\n\x11\x62locked_guarantee\x18\x03 \x03(\x0b\x32\x0b.MoneyValue\"\xa6\x04\n\x11PortfolioPosition\x12\x0c\n\x04\x66igi\x18\x01 \x01(\t\x12\x17\n\x0finstrument_type\x18\x02 \x01(\t\x12\x1c\n\x08quantity\x18\x03 \x01(\x0b\x32\n.Quotation\x12+\n\x16\x61verage_position_price\x18\x04 \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\x0e\x65xpected_yield\x18\x05 \x01(\x0b\x32\n.Quotation\x12 \n\x0b\x63urrent_nkd\x18\x06 \x01(\x0b\x32\x0b.MoneyValue\x12\x31\n\x19\x61verage_position_price_pt\x18\x07 \x01(\x0b\x32\n.QuotationB\x02\x18\x01\x12\"\n\rcurrent_price\x18\x08 \x01(\x0b\x32\x0b.MoneyValue\x12\x30\n\x1b\x61verage_position_price_fifo\x18\t \x01(\x0b\x32\x0b.MoneyValue\x12%\n\rquantity_lots\x18\n \x01(\x0b\x32\n.QuotationB\x02\x18\x01\x12\x0f\n\x07\x62locked\x18\x15 \x01(\x08\x12 \n\x0c\x62locked_lots\x18\x16 \x01(\x0b\x32\n.Quotation\x12\x14\n\x0cposition_uid\x18\x18 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x19 \x01(\t\x12\x1f\n\nvar_margin\x18\x1a \x01(\x0b\x32\x0b.MoneyValue\x12\'\n\x13\x65xpected_yield_fifo\x18\x1b \x01(\x0b\x32\n.Quotation\"\x8e\x03\n\x18VirtualPortfolioPosition\x12\x14\n\x0cposition_uid\x18\x01 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x02 \x01(\t\x12\x0c\n\x04\x66igi\x18\x03 \x01(\t\x12\x17\n\x0finstrument_type\x18\x04 \x01(\t\x12\x1c\n\x08quantity\x18\x05 \x01(\x0b\x32\n.Quotation\x12+\n\x16\x61verage_position_price\x18\x06 \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\x0e\x65xpected_yield\x18\x07 \x01(\x0b\x32\n.Quotation\x12\'\n\x13\x65xpected_yield_fifo\x18\x08 \x01(\x0b\x32\n.Quotation\x12/\n\x0b\x65xpire_date\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\"\n\rcurrent_price\x18\n \x01(\x0b\x32\x0b.MoneyValue\x12\x30\n\x1b\x61verage_position_price_fifo\x18\x0b \x01(\x0b\x32\x0b.MoneyValue\"\xa6\x01\n\x13PositionsSecurities\x12\x0c\n\x04\x66igi\x18\x01 \x01(\t\x12\x0f\n\x07\x62locked\x18\x02 \x01(\x03\x12\x0f\n\x07\x62\x61lance\x18\x03 \x01(\x03\x12\x14\n\x0cposition_uid\x18\x04 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x05 \x01(\t\x12\x18\n\x10\x65xchange_blocked\x18\x0b \x01(\x08\x12\x17\n\x0finstrument_type\x18\x10 \x01(\t\"p\n\x10PositionsFutures\x12\x0c\n\x04\x66igi\x18\x01 \x01(\t\x12\x0f\n\x07\x62locked\x18\x02 \x01(\x03\x12\x0f\n\x07\x62\x61lance\x18\x03 \x01(\x03\x12\x14\n\x0cposition_uid\x18\x04 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x05 \x01(\t\"b\n\x10PositionsOptions\x12\x14\n\x0cposition_uid\x18\x01 \x01(\t\x12\x16\n\x0einstrument_uid\x18\x02 \x01(\t\x12\x0f\n\x07\x62locked\x18\x0b \x01(\x03\x12\x0f\n\x07\x62\x61lance\x18\x15 \x01(\x03\"\xa6\x01\n\x13\x42rokerReportRequest\x12\x46\n\x1egenerate_broker_report_request\x18\x01 \x01(\x0b\x32\x1c.GenerateBrokerReportRequestH\x00\x12<\n\x19get_broker_report_request\x18\x02 \x01(\x0b\x32\x17.GetBrokerReportRequestH\x00\x42\t\n\x07payload\"\xab\x01\n\x14\x42rokerReportResponse\x12H\n\x1fgenerate_broker_report_response\x18\x01 \x01(\x0b\x32\x1d.GenerateBrokerReportResponseH\x00\x12>\n\x1aget_broker_report_response\x18\x02 \x01(\x0b\x32\x18.GetBrokerReportResponseH\x00\x42\t\n\x07payload\"\x83\x01\n\x1bGenerateBrokerReportRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12(\n\x04\x66rom\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12&\n\x02to\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"/\n\x1cGenerateBrokerReportResponse\x12\x0f\n\x07task_id\x18\x01 \x01(\t\"7\n\x16GetBrokerReportRequest\x12\x0f\n\x07task_id\x18\x01 \x01(\t\x12\x0c\n\x04page\x18\x02 \x01(\x05\"u\n\x17GetBrokerReportResponse\x12$\n\rbroker_report\x18\x01 \x03(\x0b\x32\r.BrokerReport\x12\x12\n\nitemsCount\x18\x02 \x01(\x05\x12\x12\n\npagesCount\x18\x03 \x01(\x05\x12\x0c\n\x04page\x18\x04 \x01(\x05\"\xaa\x06\n\x0c\x42rokerReport\x12\x10\n\x08trade_id\x18\x01 \x01(\t\x12\x10\n\x08order_id\x18\x02 \x01(\t\x12\x0c\n\x04\x66igi\x18\x03 \x01(\t\x12\x14\n\x0c\x65xecute_sign\x18\x04 \x01(\t\x12\x32\n\x0etrade_datetime\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x10\n\x08\x65xchange\x18\x06 \x01(\t\x12\x12\n\nclass_code\x18\x07 \x01(\t\x12\x11\n\tdirection\x18\x08 \x01(\t\x12\x0c\n\x04name\x18\t \x01(\t\x12\x0e\n\x06ticker\x18\n \x01(\t\x12\x1a\n\x05price\x18\x0b \x01(\x0b\x32\x0b.MoneyValue\x12\x10\n\x08quantity\x18\x0c \x01(\x03\x12!\n\x0corder_amount\x18\r \x01(\x0b\x32\x0b.MoneyValue\x12\x1d\n\taci_value\x18\x0e \x01(\x0b\x32\n.Quotation\x12\'\n\x12total_order_amount\x18\x0f \x01(\x0b\x32\x0b.MoneyValue\x12&\n\x11\x62roker_commission\x18\x10 \x01(\x0b\x32\x0b.MoneyValue\x12(\n\x13\x65xchange_commission\x18\x11 \x01(\x0b\x32\x0b.MoneyValue\x12\x31\n\x1c\x65xchange_clearing_commission\x18\x12 \x01(\x0b\x32\x0b.MoneyValue\x12\x1d\n\trepo_rate\x18\x13 \x01(\x0b\x32\n.Quotation\x12\r\n\x05party\x18\x14 \x01(\t\x12\x34\n\x10\x63lear_value_date\x18\x15 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x32\n\x0esec_value_date\x18\x16 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rbroker_status\x18\x17 \x01(\t\x12\x1f\n\x17separate_agreement_type\x18\x18 \x01(\t\x12!\n\x19separate_agreement_number\x18\x19 \x01(\t\x12\x1f\n\x17separate_agreement_date\x18\x1a \x01(\t\x12\x15\n\rdelivery_type\x18\x1b \x01(\t\"\xdb\x01\n GetDividendsForeignIssuerRequest\x12Z\n\"generate_div_foreign_issuer_report\x18\x01 \x01(\x0b\x32,.GenerateDividendsForeignIssuerReportRequestH\x00\x12P\n\x1dget_div_foreign_issuer_report\x18\x02 \x01(\x0b\x32\'.GetDividendsForeignIssuerReportRequestH\x00\x42\t\n\x07payload\"\xe3\x01\n!GetDividendsForeignIssuerResponse\x12\x64\n+generate_div_foreign_issuer_report_response\x18\x01 \x01(\x0b\x32-.GenerateDividendsForeignIssuerReportResponseH\x00\x12M\n\x19\x64iv_foreign_issuer_report\x18\x02 \x01(\x0b\x32(.GetDividendsForeignIssuerReportResponseH\x00\x42\t\n\x07payload\"\x93\x01\n+GenerateDividendsForeignIssuerReportRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12(\n\x04\x66rom\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12&\n\x02to\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"G\n&GetDividendsForeignIssuerReportRequest\x12\x0f\n\x07task_id\x18\x01 \x01(\t\x12\x0c\n\x04page\x18\x02 \x01(\x05\"?\n,GenerateDividendsForeignIssuerReportResponse\x12\x0f\n\x07task_id\x18\x01 \x01(\t\"\xa7\x01\n\'GetDividendsForeignIssuerReportResponse\x12\x46\n\x1f\x64ividends_foreign_issuer_report\x18\x01 \x03(\x0b\x32\x1d.DividendsForeignIssuerReport\x12\x12\n\nitemsCount\x18\x02 \x01(\x05\x12\x12\n\npagesCount\x18\x03 \x01(\x05\x12\x0c\n\x04page\x18\x04 \x01(\x05\"\x8b\x03\n\x1c\x44ividendsForeignIssuerReport\x12/\n\x0brecord_date\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x30\n\x0cpayment_date\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsecurity_name\x18\x03 \x01(\t\x12\x0c\n\x04isin\x18\x04 \x01(\t\x12\x16\n\x0eissuer_country\x18\x05 \x01(\t\x12\x10\n\x08quantity\x18\x06 \x01(\x03\x12\x1c\n\x08\x64ividend\x18\x07 \x01(\x0b\x32\n.Quotation\x12\'\n\x13\x65xternal_commission\x18\x08 \x01(\x0b\x32\n.Quotation\x12\"\n\x0e\x64ividend_gross\x18\t \x01(\x0b\x32\n.Quotation\x12\x17\n\x03tax\x18\n \x01(\x0b\x32\n.Quotation\x12#\n\x0f\x64ividend_amount\x18\x0b \x01(\x0b\x32\n.Quotation\x12\x10\n\x08\x63urrency\x18\x0c \x01(\t\"*\n\x16PortfolioStreamRequest\x12\x10\n\x08\x61\x63\x63ounts\x18\x01 \x03(\t\"\x9b\x01\n\x17PortfolioStreamResponse\x12\x35\n\rsubscriptions\x18\x01 \x01(\x0b\x32\x1c.PortfolioSubscriptionResultH\x00\x12\'\n\tportfolio\x18\x02 \x01(\x0b\x32\x12.PortfolioResponseH\x00\x12\x15\n\x04ping\x18\x03 \x01(\x0b\x32\x05.PingH\x00\x42\t\n\x07payload\"K\n\x1bPortfolioSubscriptionResult\x12,\n\x08\x61\x63\x63ounts\x18\x01 \x03(\x0b\x32\x1a.AccountSubscriptionStatus\"j\n\x19\x41\x63\x63ountSubscriptionStatus\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12\x39\n\x13subscription_status\x18\x06 \x01(\x0e\x32\x1c.PortfolioSubscriptionStatus\"\xd4\x02\n\x1cGetOperationsByCursorRequest\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12\x15\n\rinstrument_id\x18\x02 \x01(\t\x12(\n\x04\x66rom\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12&\n\x02to\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0e\n\x06\x63ursor\x18\x0b \x01(\t\x12\r\n\x05limit\x18\x0c \x01(\x05\x12\'\n\x0foperation_types\x18\r \x03(\x0e\x32\x0e.OperationType\x12\x1e\n\x05state\x18\x0e \x01(\x0e\x32\x0f.OperationState\x12\x1b\n\x13without_commissions\x18\x0f \x01(\x08\x12\x16\n\x0ewithout_trades\x18\x10 \x01(\x08\x12\x1a\n\x12without_overnights\x18\x11 \x01(\x08\"e\n\x1dGetOperationsByCursorResponse\x12\x10\n\x08has_next\x18\x01 \x01(\x08\x12\x13\n\x0bnext_cursor\x18\x02 \x01(\t\x12\x1d\n\x05items\x18\x06 \x03(\x0b\x32\x0e.OperationItem\"\xf5\x05\n\rOperationItem\x12\x0e\n\x06\x63ursor\x18\x01 \x01(\t\x12\x19\n\x11\x62roker_account_id\x18\x06 \x01(\t\x12\n\n\x02id\x18\x10 \x01(\t\x12\x1b\n\x13parent_operation_id\x18\x11 \x01(\t\x12\x0c\n\x04name\x18\x12 \x01(\t\x12(\n\x04\x64\x61te\x18\x15 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1c\n\x04type\x18\x16 \x01(\x0e\x32\x0e.OperationType\x12\x13\n\x0b\x64\x65scription\x18\x17 \x01(\t\x12\x1e\n\x05state\x18\x18 \x01(\x0e\x32\x0f.OperationState\x12\x16\n\x0einstrument_uid\x18\x1f \x01(\t\x12\x0c\n\x04\x66igi\x18  \x01(\t\x12\x17\n\x0finstrument_type\x18! \x01(\t\x12(\n\x0finstrument_kind\x18\" \x01(\x0e\x32\x0f.InstrumentType\x12\x14\n\x0cposition_uid\x18# \x01(\t\x12\x1c\n\x07payment\x18) \x01(\x0b\x32\x0b.MoneyValue\x12\x1a\n\x05price\x18* \x01(\x0b\x32\x0b.MoneyValue\x12\x1f\n\ncommission\x18+ \x01(\x0b\x32\x0b.MoneyValue\x12\x1a\n\x05yield\x18, \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\x0eyield_relative\x18- \x01(\x0b\x32\n.Quotation\x12 \n\x0b\x61\x63\x63rued_int\x18. \x01(\x0b\x32\x0b.MoneyValue\x12\x10\n\x08quantity\x18\x33 \x01(\x03\x12\x15\n\rquantity_rest\x18\x34 \x01(\x03\x12\x15\n\rquantity_done\x18\x35 \x01(\x03\x12\x34\n\x10\x63\x61ncel_date_time\x18\x38 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rcancel_reason\x18\x39 \x01(\t\x12)\n\x0btrades_info\x18= \x01(\x0b\x32\x14.OperationItemTrades\x12\x11\n\tasset_uid\x18@ \x01(\t\":\n\x13OperationItemTrades\x12#\n\x06trades\x18\x06 \x03(\x0b\x32\x13.OperationItemTrade\"\xb9\x01\n\x12OperationItemTrade\x12\x0b\n\x03num\x18\x01 \x01(\t\x12(\n\x04\x64\x61te\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x10\n\x08quantity\x18\x0b \x01(\x03\x12\x1a\n\x05price\x18\x10 \x01(\x0b\x32\x0b.MoneyValue\x12\x1a\n\x05yield\x18\x15 \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\x0eyield_relative\x18\x16 \x01(\x0b\x32\n.Quotation\"*\n\x16PositionsStreamRequest\x12\x10\n\x08\x61\x63\x63ounts\x18\x01 \x03(\t\"\x95\x01\n\x17PositionsStreamResponse\x12\x35\n\rsubscriptions\x18\x01 \x01(\x0b\x32\x1c.PositionsSubscriptionResultH\x00\x12!\n\x08position\x18\x02 \x01(\x0b\x32\r.PositionDataH\x00\x12\x15\n\x04ping\x18\x03 \x01(\x0b\x32\x05.PingH\x00\x42\t\n\x07payload\"M\n\x1bPositionsSubscriptionResult\x12.\n\x08\x61\x63\x63ounts\x18\x01 \x03(\x0b\x32\x1c.PositionsSubscriptionStatus\"s\n\x1bPositionsSubscriptionStatus\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12@\n\x13subscription_status\x18\x06 \x01(\x0e\x32#.PositionsAccountSubscriptionStatus\"\xde\x01\n\x0cPositionData\x12\x12\n\naccount_id\x18\x01 \x01(\t\x12\x1e\n\x05money\x18\x02 \x03(\x0b\x32\x0f.PositionsMoney\x12(\n\nsecurities\x18\x03 \x03(\x0b\x32\x14.PositionsSecurities\x12\"\n\x07\x66utures\x18\x04 \x03(\x0b\x32\x11.PositionsFutures\x12\"\n\x07options\x18\x05 \x03(\x0b\x32\x11.PositionsOptions\x12(\n\x04\x64\x61te\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"Z\n\x0ePositionsMoney\x12$\n\x0f\x61vailable_value\x18\x01 \x01(\x0b\x32\x0b.MoneyValue\x12\"\n\rblocked_value\x18\x02 \x01(\x0b\x32\x0b.MoneyValue*\x8b\x01\n\x0eOperationState\x12\x1f\n\x1bOPERATION_STATE_UNSPECIFIED\x10\x00\x12\x1c\n\x18OPERATION_STATE_EXECUTED\x10\x01\x12\x1c\n\x18OPERATION_STATE_CANCELED\x10\x02\x12\x1c\n\x18OPERATION_STATE_PROGRESS\x10\x03*\xba\x10\n\rOperationType\x12\x1e\n\x1aOPERATION_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14OPERATION_TYPE_INPUT\x10\x01\x12\x1b\n\x17OPERATION_TYPE_BOND_TAX\x10\x02\x12$\n OPERATION_TYPE_OUTPUT_SECURITIES\x10\x03\x12\x1c\n\x18OPERATION_TYPE_OVERNIGHT\x10\x04\x12\x16\n\x12OPERATION_TYPE_TAX\x10\x05\x12&\n\"OPERATION_TYPE_BOND_REPAYMENT_FULL\x10\x06\x12\x1c\n\x18OPERATION_TYPE_SELL_CARD\x10\x07\x12\x1f\n\x1bOPERATION_TYPE_DIVIDEND_TAX\x10\x08\x12\x19\n\x15OPERATION_TYPE_OUTPUT\x10\t\x12!\n\x1dOPERATION_TYPE_BOND_REPAYMENT\x10\n\x12!\n\x1dOPERATION_TYPE_TAX_CORRECTION\x10\x0b\x12\x1e\n\x1aOPERATION_TYPE_SERVICE_FEE\x10\x0c\x12\x1e\n\x1aOPERATION_TYPE_BENEFIT_TAX\x10\r\x12\x1d\n\x19OPERATION_TYPE_MARGIN_FEE\x10\x0e\x12\x16\n\x12OPERATION_TYPE_BUY\x10\x0f\x12\x1b\n\x17OPERATION_TYPE_BUY_CARD\x10\x10\x12#\n\x1fOPERATION_TYPE_INPUT_SECURITIES\x10\x11\x12\x1e\n\x1aOPERATION_TYPE_SELL_MARGIN\x10\x12\x12\x1d\n\x19OPERATION_TYPE_BROKER_FEE\x10\x13\x12\x1d\n\x19OPERATION_TYPE_BUY_MARGIN\x10\x14\x12\x1b\n\x17OPERATION_TYPE_DIVIDEND\x10\x15\x12\x17\n\x13OPERATION_TYPE_SELL\x10\x16\x12\x19\n\x15OPERATION_TYPE_COUPON\x10\x17\x12\x1e\n\x1aOPERATION_TYPE_SUCCESS_FEE\x10\x18\x12$\n OPERATION_TYPE_DIVIDEND_TRANSFER\x10\x19\x12%\n!OPERATION_TYPE_ACCRUING_VARMARGIN\x10\x1a\x12(\n$OPERATION_TYPE_WRITING_OFF_VARMARGIN\x10\x1b\x12\x1f\n\x1bOPERATION_TYPE_DELIVERY_BUY\x10\x1c\x12 \n\x1cOPERATION_TYPE_DELIVERY_SELL\x10\x1d\x12\x1d\n\x19OPERATION_TYPE_TRACK_MFEE\x10\x1e\x12\x1d\n\x19OPERATION_TYPE_TRACK_PFEE\x10\x1f\x12\"\n\x1eOPERATION_TYPE_TAX_PROGRESSIVE\x10 \x12\'\n#OPERATION_TYPE_BOND_TAX_PROGRESSIVE\x10!\x12+\n\'OPERATION_TYPE_DIVIDEND_TAX_PROGRESSIVE\x10\"\x12*\n&OPERATION_TYPE_BENEFIT_TAX_PROGRESSIVE\x10#\x12-\n)OPERATION_TYPE_TAX_CORRECTION_PROGRESSIVE\x10$\x12\'\n#OPERATION_TYPE_TAX_REPO_PROGRESSIVE\x10%\x12\x1b\n\x17OPERATION_TYPE_TAX_REPO\x10&\x12 \n\x1cOPERATION_TYPE_TAX_REPO_HOLD\x10\'\x12\"\n\x1eOPERATION_TYPE_TAX_REPO_REFUND\x10(\x12,\n(OPERATION_TYPE_TAX_REPO_HOLD_PROGRESSIVE\x10)\x12.\n*OPERATION_TYPE_TAX_REPO_REFUND_PROGRESSIVE\x10*\x12\x1a\n\x16OPERATION_TYPE_DIV_EXT\x10+\x12(\n$OPERATION_TYPE_TAX_CORRECTION_COUPON\x10,\x12\x1b\n\x17OPERATION_TYPE_CASH_FEE\x10-\x12\x1a\n\x16OPERATION_TYPE_OUT_FEE\x10.\x12!\n\x1dOPERATION_TYPE_OUT_STAMP_DUTY\x10/\x12\x1f\n\x1bOPERATION_TYPE_OUTPUT_SWIFT\x10\x32\x12\x1e\n\x1aOPERATION_TYPE_INPUT_SWIFT\x10\x33\x12#\n\x1fOPERATION_TYPE_OUTPUT_ACQUIRING\x10\x35\x12\"\n\x1eOPERATION_TYPE_INPUT_ACQUIRING\x10\x36\x12!\n\x1dOPERATION_TYPE_OUTPUT_PENALTY\x10\x37\x12\x1d\n\x19OPERATION_TYPE_ADVICE_FEE\x10\x38\x12\x1f\n\x1bOPERATION_TYPE_TRANS_IIS_BS\x10\x39\x12\x1e\n\x1aOPERATION_TYPE_TRANS_BS_BS\x10:\x12\x1c\n\x18OPERATION_TYPE_OUT_MULTI\x10;\x12\x1c\n\x18OPERATION_TYPE_INP_MULTI\x10<\x12!\n\x1dOPERATION_TYPE_OVER_PLACEMENT\x10=\x12\x1b\n\x17OPERATION_TYPE_OVER_COM\x10>\x12\x1e\n\x1aOPERATION_TYPE_OVER_INCOME\x10?\x12$\n OPERATION_TYPE_OPTION_EXPIRATION\x10@*\xde\x01\n\x1bPortfolioSubscriptionStatus\x12-\n)PORTFOLIO_SUBSCRIPTION_STATUS_UNSPECIFIED\x10\x00\x12)\n%PORTFOLIO_SUBSCRIPTION_STATUS_SUCCESS\x10\x01\x12\x33\n/PORTFOLIO_SUBSCRIPTION_STATUS_ACCOUNT_NOT_FOUND\x10\x02\x12\x30\n,PORTFOLIO_SUBSCRIPTION_STATUS_INTERNAL_ERROR\x10\x03*\xe5\x01\n\"PositionsAccountSubscriptionStatus\x12-\n)POSITIONS_SUBSCRIPTION_STATUS_UNSPECIFIED\x10\x00\x12)\n%POSITIONS_SUBSCRIPTION_STATUS_SUCCESS\x10\x01\x12\x33\n/POSITIONS_SUBSCRIPTION_STATUS_ACCOUNT_NOT_FOUND\x10\x02\x12\x30\n,POSITIONS_SUBSCRIPTION_STATUS_INTERNAL_ERROR\x10\x03\x32\xfd\x03\n\x11OperationsService\x12\x38\n\rGetOperations\x12\x12.OperationsRequest\x1a\x13.OperationsResponse\x12\x35\n\x0cGetPortfolio\x12\x11.PortfolioRequest\x1a\x12.PortfolioResponse\x12\x35\n\x0cGetPositions\x12\x11.PositionsRequest\x1a\x12.PositionsResponse\x12\x44\n\x11GetWithdrawLimits\x12\x16.WithdrawLimitsRequest\x1a\x17.WithdrawLimitsResponse\x12>\n\x0fGetBrokerReport\x12\x14.BrokerReportRequest\x1a\x15.BrokerReportResponse\x12\x62\n\x19GetDividendsForeignIssuer\x12!.GetDividendsForeignIssuerRequest\x1a\".GetDividendsForeignIssuerResponse\x12V\n\x15GetOperationsByCursor\x12\x1d.GetOperationsByCursorRequest\x1a\x1e.GetOperationsByCursorResponse2\xa9\x01\n\x17OperationsStreamService\x12\x46\n\x0fPortfolioStream\x12\x17.PortfolioStreamRequest\x1a\x18.PortfolioStreamResponse0\x01\x12\x46\n\x0fPositionsStream\x12\x17.PositionsStreamRequest\x1a\x18.PositionsStreamResponse0\x01\x42\x61\n\x1cru.tinkoff.piapi.contract.v1P\x01Z\x0c./;investapi\xa2\x02\x05TIAPI\xaa\x02\x14Tinkoff.InvestApi.V1\xca\x02\x11Tinkoff\\Invest\\V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["MoneyValue", "common.proto"],
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

OperationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationsRequest").msgclass
OperationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationsResponse").msgclass
Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Operation").msgclass
OperationTrade = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationTrade").msgclass
PortfolioRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioRequest").msgclass
PortfolioRequest::CurrencyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioRequest.CurrencyRequest").enummodule
PortfolioResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioResponse").msgclass
PositionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsRequest").msgclass
PositionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsResponse").msgclass
WithdrawLimitsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("WithdrawLimitsRequest").msgclass
WithdrawLimitsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("WithdrawLimitsResponse").msgclass
PortfolioPosition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioPosition").msgclass
VirtualPortfolioPosition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("VirtualPortfolioPosition").msgclass
PositionsSecurities = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsSecurities").msgclass
PositionsFutures = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsFutures").msgclass
PositionsOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsOptions").msgclass
BrokerReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("BrokerReportRequest").msgclass
BrokerReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("BrokerReportResponse").msgclass
GenerateBrokerReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GenerateBrokerReportRequest").msgclass
GenerateBrokerReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GenerateBrokerReportResponse").msgclass
GetBrokerReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetBrokerReportRequest").msgclass
GetBrokerReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetBrokerReportResponse").msgclass
BrokerReport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("BrokerReport").msgclass
GetDividendsForeignIssuerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetDividendsForeignIssuerRequest").msgclass
GetDividendsForeignIssuerResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetDividendsForeignIssuerResponse").msgclass
GenerateDividendsForeignIssuerReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GenerateDividendsForeignIssuerReportRequest").msgclass
GetDividendsForeignIssuerReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetDividendsForeignIssuerReportRequest").msgclass
GenerateDividendsForeignIssuerReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GenerateDividendsForeignIssuerReportResponse").msgclass
GetDividendsForeignIssuerReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetDividendsForeignIssuerReportResponse").msgclass
DividendsForeignIssuerReport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("DividendsForeignIssuerReport").msgclass
PortfolioStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioStreamRequest").msgclass
PortfolioStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioStreamResponse").msgclass
PortfolioSubscriptionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioSubscriptionResult").msgclass
AccountSubscriptionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("AccountSubscriptionStatus").msgclass
GetOperationsByCursorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetOperationsByCursorRequest").msgclass
GetOperationsByCursorResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("GetOperationsByCursorResponse").msgclass
OperationItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationItem").msgclass
OperationItemTrades = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationItemTrades").msgclass
OperationItemTrade = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationItemTrade").msgclass
PositionsStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsStreamRequest").msgclass
PositionsStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsStreamResponse").msgclass
PositionsSubscriptionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsSubscriptionResult").msgclass
PositionsSubscriptionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsSubscriptionStatus").msgclass
PositionData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionData").msgclass
PositionsMoney = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsMoney").msgclass
OperationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationState").enummodule
OperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("OperationType").enummodule
PortfolioSubscriptionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PortfolioSubscriptionStatus").enummodule
PositionsAccountSubscriptionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("PositionsAccountSubscriptionStatus").enummodule