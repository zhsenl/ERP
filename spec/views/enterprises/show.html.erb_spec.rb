# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "enterprises/show" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :trade_code => "Trade Code",
      :registe_name => "Registe Name",
      :address => "Address",
      :linkman => "Linkman",
      :legal_person_code => "Legal Person Code",
      :telephone => "Telephone",
      :fax => "Fax",
      :bank => "Bank",
      :bank_account => "Bank Account"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trade Code/)
    rendered.should match(/Registe Name/)
    rendered.should match(/Address/)
    rendered.should match(/Linkman/)
    rendered.should match(/Legal Person Code/)
    rendered.should match(/Telephone/)
    rendered.should match(/Fax/)
    rendered.should match(/Bank/)
    rendered.should match(/Bank Account/)
  end
end
