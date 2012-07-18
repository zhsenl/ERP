# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_transit_types/edit" do
  before(:each) do
    @transit_type = assign(:transit_type, stub_model(Dict::TransitType,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit transit_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dict_transit_types_path(@transit_type), :method => "post" do
      assert_select "input#transit_type_code", :name => "transit_type[code]"
      assert_select "input#transit_type_name", :name => "transit_type[name]"
    end
  end
end
