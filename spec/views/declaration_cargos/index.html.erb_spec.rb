# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "declaration_cargos/index" do
  before(:each) do
    assign(:declaration_cargos, [
      stub_model(DeclarationCargo,
        :declaration_id => 1,
        :no_in_contract => 2,
        :code => "Code",
        :name => "Name",
        :specification => "Specification",
        :quantity => "9.99",
        :unit => "Unit",
        :quantity1 => "9.99",
        :unit1 => "Unit1",
        :quantity2 => "9.99",
        :unit2 => "Unit2",
        :trade_country => "Trade Country",
        :unit_price => "9.99",
        :currency => "Currency",
        :tax_mode => "Tax Mode",
        :goods_version => "Goods Version",
        :no => 3
      ),
      stub_model(DeclarationCargo,
        :declaration_id => 1,
        :no_in_contract => 2,
        :code => "Code",
        :name => "Name",
        :specification => "Specification",
        :quantity => "9.99",
        :unit => "Unit",
        :quantity1 => "9.99",
        :unit1 => "Unit1",
        :quantity2 => "9.99",
        :unit2 => "Unit2",
        :trade_country => "Trade Country",
        :unit_price => "9.99",
        :currency => "Currency",
        :tax_mode => "Tax Mode",
        :goods_version => "Goods Version",
        :no => 3
      )
    ])
  end

  it "renders a list of declaration_cargos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Specification".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit1".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit2".to_s, :count => 2
    assert_select "tr>td", :text => "Trade Country".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Goods Version".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
