require 'spec_helper'

describe "declaration_packings/new" do
  before(:each) do
    assign(:declaration_packing, stub_model(DeclarationPacking,
      :declaration_id => 1,
      :name => "MyString",
      :package_amount => 1,
      :quantity => "9.99",
      :unit => "MyString",
      :gross_weight => "9.99",
      :net_weight => "9.99",
      :gross_weight_per_package => "9.99",
      :net_weight_per_package => "9.99"
    ).as_new_record)
  end

  it "renders new declaration_packing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declaration_packings_path, :method => "post" do
      assert_select "input#declaration_packing_declaration_id", :name => "declaration_packing[declaration_id]"
      assert_select "input#declaration_packing_name", :name => "declaration_packing[name]"
      assert_select "input#declaration_packing_package_amount", :name => "declaration_packing[package_amount]"
      assert_select "input#declaration_packing_quantity", :name => "declaration_packing[quantity]"
      assert_select "input#declaration_packing_unit", :name => "declaration_packing[unit]"
      assert_select "input#declaration_packing_gross_weight", :name => "declaration_packing[gross_weight]"
      assert_select "input#declaration_packing_net_weight", :name => "declaration_packing[net_weight]"
      assert_select "input#declaration_packing_gross_weight_per_package", :name => "declaration_packing[gross_weight_per_package]"
      assert_select "input#declaration_packing_net_weight_per_package", :name => "declaration_packing[net_weight_per_package]"
    end
  end
end
