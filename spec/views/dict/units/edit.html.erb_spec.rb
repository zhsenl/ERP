# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_units/edit" do
  before(:each) do
    @unit = assign(:unit, stub_model(Dict::Unit,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dict_units_path(@unit), :method => "post" do
      assert_select "input#unit_code", :name => "unit[code]"
      assert_select "input#unit_name", :name => "unit[name]"
    end
  end
end
