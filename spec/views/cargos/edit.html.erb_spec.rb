# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/edit" do
  before(:each) do
    @cargo = assign(:cargo, stub_model(Cargo,
      :enterprise_id => 1,
      :code => "MyString",
      :name => "MyString",
      :specification => "MyString",
      :unit => "MyString",
      :unit1 => "MyString",
      :unit2 => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit cargo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cargos_path(@cargo), :method => "post" do
      assert_select "input#cargo_enterprise_id", :name => "cargo[enterprise_id]"
      assert_select "input#cargo_code", :name => "cargo[code]"
      assert_select "input#cargo_name", :name => "cargo[name]"
      assert_select "input#cargo_specification", :name => "cargo[specification]"
      assert_select "input#cargo_unit", :name => "cargo[unit]"
      assert_select "input#cargo_unit1", :name => "cargo[unit1]"
      assert_select "input#cargo_unit2", :name => "cargo[unit2]"
      assert_select "input#cargo_country", :name => "cargo[country]"
    end
  end
end
