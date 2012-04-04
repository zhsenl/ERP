# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_customs/edit" do
  before(:each) do
    @custom = assign(:custom, stub_model(Dict::Custom,
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit custom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dict_customs_path(@custom), :method => "post" do
      assert_select "input#custom_code", :name => "custom[code]"
      assert_select "input#custom_name", :name => "custom[name]"
    end
  end
end
