# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_materials/edit" do
  before(:each) do
    @contract_material = assign(:contract_material, stub_model(ContractMaterial,
      :contract_id => 1,
      :code => "MyString",
      :plus_code => "MyString",
      :name => "MyString",
      :specification => "MyString",
      :unit => "MyString",
      :unit1 => "MyString",
      :unit2 => "MyString",
      :quantity => "9.99",
      :unit_price => "9.99",
      :country => "MyString",
      :tax_mode => "MyString",
      :no => "MyString"
    ))
  end

  it "renders the edit contract_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_materials_path(@contract_material), :method => "post" do
      assert_select "input#contract_material_contract_id", :name => "contract_material[contract_id]"
      assert_select "input#contract_material_code", :name => "contract_material[code]"
      assert_select "input#contract_material_plus_code", :name => "contract_material[plus_code]"
      assert_select "input#contract_material_name", :name => "contract_material[name]"
      assert_select "input#contract_material_specification", :name => "contract_material[specification]"
      assert_select "input#contract_material_unit", :name => "contract_material[unit]"
      assert_select "input#contract_material_unit1", :name => "contract_material[unit1]"
      assert_select "input#contract_material_unit2", :name => "contract_material[unit2]"
      assert_select "input#contract_material_quantity", :name => "contract_material[quantity]"
      assert_select "input#contract_material_unit_price", :name => "contract_material[unit_price]"
      assert_select "input#contract_material_country", :name => "contract_material[country]"
      assert_select "input#contract_material_tax_mode", :name => "contract_material[tax_mode]"
      assert_select "input#contract_material_no", :name => "contract_material[no]"
    end
  end
end
