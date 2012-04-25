# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_products/new" do
  before(:each) do
    assign(:contract_product, stub_model(ContractProduct,
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

  it "renders new contract_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_products_path, :method => "post" do
      assert_select "input#contract_product_code", :name => "contract_product[code]"
      assert_select "input#contract_product_plus_code", :name => "contract_product[plus_code]"
      assert_select "input#contract_product_name", :name => "contract_product[name]"
      assert_select "input#contract_product_specification", :name => "contract_product[specification]"
      assert_select "input#contract_product_unit", :name => "contract_product[unit]"
      assert_select "input#contract_product_unit1", :name => "contract_product[unit1]"
      assert_select "input#contract_product_unit2", :name => "contract_product[unit2]"
      assert_select "input#contract_product_quantity", :name => "contract_product[quantity]"
      assert_select "input#contract_product_unit_price", :name => "contract_product[unit_price]"
      assert_select "input#contract_product_total_price", :name => "contract_product[total_price]"
      assert_select "input#contract_product_country", :name => "contract_product[country]"
      assert_select "input#contract_product_tax_mode", :name => "contract_product[tax_mode]"
      assert_select "input#contract_product_no", :name => "contract_product[no]"
    end
  end
end
