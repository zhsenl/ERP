# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "enterprises/index" do
  before(:each) do
    assign(:enterprises, [
      stub_model(Enterprise,
        :trade_code => "Trade Code",
        :registe_name => "Registe Name",
        :address => "Address",
        :linkman => "Linkman",
        :legal_person_code => "Legal Person Code",
        :telephone => "Telephone",
        :fax => "Fax",
        :bank => "Bank",
        :bank_account => "Bank Account"
      ),
      stub_model(Enterprise,
        :trade_code => "Trade Code",
        :registe_name => "Registe Name",
        :address => "Address",
        :linkman => "Linkman",
        :legal_person_code => "Legal Person Code",
        :telephone => "Telephone",
        :fax => "Fax",
        :bank => "Bank",
        :bank_account => "Bank Account"
      )
    ])
  end

  it "renders a list of enterprises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trade Code".to_s, :count => 2
    assert_select "tr>td", :text => "Registe Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Linkman".to_s, :count => 2
    assert_select "tr>td", :text => "Legal Person Code".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Bank".to_s, :count => 2
    assert_select "tr>td", :text => "Bank Account".to_s, :count => 2
  end
end
