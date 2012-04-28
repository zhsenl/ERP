# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "declarations/edit" do
  before(:each) do
    @declaration = assign(:declaration, stub_model(Declaration,
      :pre_entry_no => "MyString",
      :entry_no => "MyString",
      :eport_no => "MyString",
      :declarant => "MyString",
      :declare_enterprise => "MyString",
      :operate_enterprise => "MyString",
      :custom => "MyString",
      :enrol_no => "MyString",
      :transport_mode => "MyString",
      :transport_tool => "MyString",
      :truck => "MyString",
      :bill_no => "MyString",
      :trade_mode => "MyString",
      :tax_kind => "MyString",
      :trade_country => "MyString",
      :port => "MyString",
      :destination => "MyString",
      :pay_way => "MyString",
      :certification => "MyString",
      :deal_mode => "MyString",
      :package_amount => 1,
      :wrap_type => "MyString",
      :gross_weight => "9.99",
      :net_weight => "9.99",
      :load_port => "MyString",
      :memo => "MyString",
      :attachments => "MyString"
    ))
  end

  it "renders the edit declaration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declarations_path(@declaration), :method => "post" do
      assert_select "input#declaration_pre_entry_no", :name => "declaration[pre_entry_no]"
      assert_select "input#declaration_entry_no", :name => "declaration[entry_no]"
      assert_select "input#declaration_eport_no", :name => "declaration[eport_no]"
      assert_select "input#declaration_declarant", :name => "declaration[declarant]"
      assert_select "input#declaration_declare_enterprise", :name => "declaration[declare_enterprise]"
      assert_select "input#declaration_operate_enterprise", :name => "declaration[operate_enterprise]"
      assert_select "input#declaration_custom", :name => "declaration[custom]"
      assert_select "input#declaration_enrol_no", :name => "declaration[enrol_no]"
      assert_select "input#declaration_transport_mode", :name => "declaration[transport_mode]"
      assert_select "input#declaration_transport_tool", :name => "declaration[transport_tool]"
      assert_select "input#declaration_truck", :name => "declaration[truck]"
      assert_select "input#declaration_bill_no", :name => "declaration[bill_no]"
      assert_select "input#declaration_trade_mode", :name => "declaration[trade_mode]"
      assert_select "input#declaration_tax_kind", :name => "declaration[tax_kind]"
      assert_select "input#declaration_trade_country", :name => "declaration[trade_country]"
      assert_select "input#declaration_port", :name => "declaration[port]"
      assert_select "input#declaration_destination", :name => "declaration[destination]"
      assert_select "input#declaration_pay_way", :name => "declaration[pay_way]"
      assert_select "input#declaration_certification", :name => "declaration[certification]"
      assert_select "input#declaration_deal_mode", :name => "declaration[deal_mode]"
      assert_select "input#declaration_package_amount", :name => "declaration[package_amount]"
      assert_select "input#declaration_wrap_type", :name => "declaration[wrap_type]"
      assert_select "input#declaration_gross_weight", :name => "declaration[gross_weight]"
      assert_select "input#declaration_net_weight", :name => "declaration[net_weight]"
      assert_select "input#declaration_load_port", :name => "declaration[load_port]"
      assert_select "input#declaration_memo", :name => "declaration[memo]"
      assert_select "input#declaration_attachments", :name => "declaration[attachments]"
    end
  end
end
