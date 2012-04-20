# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_materials/index" do
  before(:each) do
    assign(:contract_materials, [
      stub_model(ContractMaterial,
        :contract_id => 1,
        :code => "Code",
        :plus_code => "Plus Code",
        :name => "Name",
        :specification => "Specification",
        :unit => "Unit",
        :unit1 => "Unit1",
        :unit2 => "Unit2",
        :quantity => "9.99",
        :unit_price => "9.99",
        :country => "Country",
        :tax_mode => "Tax Mode",
        :no => "No"
      ),
      stub_model(ContractMaterial,
        :contract_id => 1,
        :code => "Code",
        :plus_code => "Plus Code",
        :name => "Name",
        :specification => "Specification",
        :unit => "Unit",
        :unit1 => "Unit1",
        :unit2 => "Unit2",
        :quantity => "9.99",
        :unit_price => "9.99",
        :country => "Country",
        :tax_mode => "Tax Mode",
        :no => "No"
      )
    ])
  end

  it "renders a list of contract_materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Plus Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Specification".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Unit1".to_s, :count => 2
    assert_select "tr>td", :text => "Unit2".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Mode".to_s, :count => 2
    assert_select "tr>td", :text => "No".to_s, :count => 2
  end
end
