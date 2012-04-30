require 'spec_helper'

describe "declaration_cargos/new" do
  before(:each) do
    assign(:declaration_cargo, stub_model(DeclarationCargo,
      :declaration_id => 1,
      :no_in_contract => 1,
      :code => "MyString",
      :name => "MyString",
      :specification => "MyString",
      :quantity => "9.99",
      :unit => "MyString",
      :quantity1 => "9.99",
      :unit1 => "MyString",
      :quantity2 => "9.99",
      :unit2 => "MyString",
      :trade_country => "MyString",
      :unit_price => "9.99",
      :currency => "MyString",
      :tax_mode => "MyString",
      :goods_version => "MyString",
      :no => 1
    ).as_new_record)
  end

  it "renders new declaration_cargo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declaration_cargos_path, :method => "post" do
      assert_select "input#declaration_cargo_declaration_id", :name => "declaration_cargo[declaration_id]"
      assert_select "input#declaration_cargo_no_in_contract", :name => "declaration_cargo[no_in_contract]"
      assert_select "input#declaration_cargo_code", :name => "declaration_cargo[code]"
      assert_select "input#declaration_cargo_name", :name => "declaration_cargo[name]"
      assert_select "input#declaration_cargo_specification", :name => "declaration_cargo[specification]"
      assert_select "input#declaration_cargo_quantity", :name => "declaration_cargo[quantity]"
      assert_select "input#declaration_cargo_unit", :name => "declaration_cargo[unit]"
      assert_select "input#declaration_cargo_quantity1", :name => "declaration_cargo[quantity1]"
      assert_select "input#declaration_cargo_unit1", :name => "declaration_cargo[unit1]"
      assert_select "input#declaration_cargo_quantity2", :name => "declaration_cargo[quantity2]"
      assert_select "input#declaration_cargo_unit2", :name => "declaration_cargo[unit2]"
      assert_select "input#declaration_cargo_trade_country", :name => "declaration_cargo[trade_country]"
      assert_select "input#declaration_cargo_unit_price", :name => "declaration_cargo[unit_price]"
      assert_select "input#declaration_cargo_currency", :name => "declaration_cargo[currency]"
      assert_select "input#declaration_cargo_tax_mode", :name => "declaration_cargo[tax_mode]"
      assert_select "input#declaration_cargo_goods_version", :name => "declaration_cargo[goods_version]"
      assert_select "input#declaration_cargo_no", :name => "declaration_cargo[no]"
    end
  end
end
