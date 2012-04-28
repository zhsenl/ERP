# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "declarations/index" do
  before(:each) do
    assign(:declarations, [
      stub_model(Declaration,
        :pre_entry_no => "Pre Entry No",
        :entry_no => "Entry No",
        :eport_no => "Eport No",
        :declarant => "Declarant",
        :declare_enterprise => "Declare Enterprise",
        :operate_enterprise => "Operate Enterprise",
        :custom => "Custom",
        :enrol_no => "Enrol No",
        :transport_mode => "Transport Mode",
        :transport_tool => "Transport Tool",
        :truck => "Truck",
        :bill_no => "Bill No",
        :trade_mode => "Trade Mode",
        :tax_kind => "Tax Kind",
        :trade_country => "Trade Country",
        :port => "Port",
        :destination => "Destination",
        :pay_way => "Pay Way",
        :certification => "Certification",
        :deal_mode => "Deal Mode",
        :package_amount => 1,
        :wrap_type => "Wrap Type",
        :gross_weight => "9.99",
        :net_weight => "9.99",
        :load_port => "Load Port",
        :memo => "Memo",
        :attachments => "Attachments"
      ),
      stub_model(Declaration,
        :pre_entry_no => "Pre Entry No",
        :entry_no => "Entry No",
        :eport_no => "Eport No",
        :declarant => "Declarant",
        :declare_enterprise => "Declare Enterprise",
        :operate_enterprise => "Operate Enterprise",
        :custom => "Custom",
        :enrol_no => "Enrol No",
        :transport_mode => "Transport Mode",
        :transport_tool => "Transport Tool",
        :truck => "Truck",
        :bill_no => "Bill No",
        :trade_mode => "Trade Mode",
        :tax_kind => "Tax Kind",
        :trade_country => "Trade Country",
        :port => "Port",
        :destination => "Destination",
        :pay_way => "Pay Way",
        :certification => "Certification",
        :deal_mode => "Deal Mode",
        :package_amount => 1,
        :wrap_type => "Wrap Type",
        :gross_weight => "9.99",
        :net_weight => "9.99",
        :load_port => "Load Port",
        :memo => "Memo",
        :attachments => "Attachments"
      )
    ])
  end

  it "renders a list of declarations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pre Entry No".to_s, :count => 2
    assert_select "tr>td", :text => "Entry No".to_s, :count => 2
    assert_select "tr>td", :text => "Eport No".to_s, :count => 2
    assert_select "tr>td", :text => "Declarant".to_s, :count => 2
    assert_select "tr>td", :text => "Declare Enterprise".to_s, :count => 2
    assert_select "tr>td", :text => "Operate Enterprise".to_s, :count => 2
    assert_select "tr>td", :text => "Custom".to_s, :count => 2
    assert_select "tr>td", :text => "Enrol No".to_s, :count => 2
    assert_select "tr>td", :text => "Transport Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Transport Tool".to_s, :count => 2
    assert_select "tr>td", :text => "Truck".to_s, :count => 2
    assert_select "tr>td", :text => "Bill No".to_s, :count => 2
    assert_select "tr>td", :text => "Trade Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Trade Country".to_s, :count => 2
    assert_select "tr>td", :text => "Port".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Way".to_s, :count => 2
    assert_select "tr>td", :text => "Certification".to_s, :count => 2
    assert_select "tr>td", :text => "Deal Mode".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Wrap Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Load Port".to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
    assert_select "tr>td", :text => "Attachments".to_s, :count => 2
  end
end
