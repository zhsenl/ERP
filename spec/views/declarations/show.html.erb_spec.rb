# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "declarations/show" do
  before(:each) do
    @declaration = assign(:declaration, stub_model(Declaration,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pre Entry No/)
    rendered.should match(/Entry No/)
    rendered.should match(/Eport No/)
    rendered.should match(/Declarant/)
    rendered.should match(/Declare Enterprise/)
    rendered.should match(/Operate Enterprise/)
    rendered.should match(/Custom/)
    rendered.should match(/Enrol No/)
    rendered.should match(/Transport Mode/)
    rendered.should match(/Transport Tool/)
    rendered.should match(/Truck/)
    rendered.should match(/Bill No/)
    rendered.should match(/Trade Mode/)
    rendered.should match(/Tax Kind/)
    rendered.should match(/Trade Country/)
    rendered.should match(/Port/)
    rendered.should match(/Destination/)
    rendered.should match(/Pay Way/)
    rendered.should match(/Certification/)
    rendered.should match(/Deal Mode/)
    rendered.should match(/1/)
    rendered.should match(/Wrap Type/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Load Port/)
    rendered.should match(/Memo/)
    rendered.should match(/Attachments/)
  end
end
