# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "declaration_cargos/show" do
  before(:each) do
    @declaration_cargo = assign(:declaration_cargo, stub_model(DeclarationCargo,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Specification/)
    rendered.should match(/9.99/)
    rendered.should match(/Unit/)
    rendered.should match(/9.99/)
    rendered.should match(/Unit1/)
    rendered.should match(/9.99/)
    rendered.should match(/Unit2/)
    rendered.should match(/Trade Country/)
    rendered.should match(/9.99/)
    rendered.should match(/Currency/)
    rendered.should match(/Tax Mode/)
    rendered.should match(/Goods Version/)
    rendered.should match(/3/)
  end
end
