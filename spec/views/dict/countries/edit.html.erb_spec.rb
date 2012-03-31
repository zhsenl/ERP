# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_countries/edit" do
  before(:each) do
    @country = assign(:country, stub_model(Dict::Country,
      :code => "MyString",
      :name => "MyString",
      :english_name => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dict_countries_path(@country), :method => "post" do
      assert_select "input#country_code", :name => "country[code]"
      assert_select "input#country_name", :name => "country[name]"
      assert_select "input#country_english_name", :name => "country[english_name]"
    end
  end
end
