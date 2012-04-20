# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_productions/new" do
  before(:each) do
    assign(:contract_production, stub_model(ContractProduction,
      :code => "MyString",
      :plus_code => "MyString",
      :name => "MyString",
      :specification => "MyString",
      :unit => "MyString",
      :unit1 => "MyString",
      :unit2 => "MyString",
      :quantity => "9.99",
      :unit_price => "9.99",
      :total_price => "9.99",
      :country => "MyString",
      :tax_mode => "MyString",
      :no => "MyString"
    ).as_new_record)
  end

  it "renders new contract_production form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_productions_path, :method => "post" do
      assert_select "input#contract_production_code", :name => "contract_production[code]"
      assert_select "input#contract_production_plus_code", :name => "contract_production[plus_code]"
      assert_select "input#contract_production_name", :name => "contract_production[name]"
      assert_select "input#contract_production_specification", :name => "contract_production[specification]"
      assert_select "input#contract_production_unit", :name => "contract_production[unit]"
      assert_select "input#contract_production_unit1", :name => "contract_production[unit1]"
      assert_select "input#contract_production_unit2", :name => "contract_production[unit2]"
      assert_select "input#contract_production_quantity", :name => "contract_production[quantity]"
      assert_select "input#contract_production_unit_price", :name => "contract_production[unit_price]"
      assert_select "input#contract_production_total_price", :name => "contract_production[total_price]"
      assert_select "input#contract_production_country", :name => "contract_production[country]"
      assert_select "input#contract_production_tax_mode", :name => "contract_production[tax_mode]"
      assert_select "input#contract_production_no", :name => "contract_production[no]"
    end
  end
end
