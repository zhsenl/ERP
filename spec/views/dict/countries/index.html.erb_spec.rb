# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_countries/index" do
  before(:each) do
    assign(:dict_countries, [
      stub_model(Dict::Country,
        :code => "Code",
        :name => "Name",
        :english_name => "English Name"
      ),
      stub_model(Dict::Country,
        :code => "Code",
        :name => "Name",
        :english_name => "English Name"
      )
    ])
  end

  it "renders a list of dict_countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "English Name".to_s, :count => 2
  end
end
