# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_products/show" do
  before(:each) do
    @contract_product = assign(:contract_product, stub_model(ContractProduct,
      :code => "Code",
      :plus_code => "Plus Code",
      :name => "Name",
      :specification => "Specification",
      :unit => "Unit",
      :unit1 => "Unit1",
      :unit2 => "Unit2",
      :quantity => "9.99",
      :unit_price => "9.99",
      :total_price => "9.99",
      :country => "Country",
      :tax_mode => "Tax Mode",
      :no => "No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Plus Code/)
    rendered.should match(/Name/)
    rendered.should match(/Specification/)
    rendered.should match(/Unit/)
    rendered.should match(/Unit1/)
    rendered.should match(/Unit2/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Country/)
    rendered.should match(/Tax Mode/)
    rendered.should match(/No/)
  end
end
