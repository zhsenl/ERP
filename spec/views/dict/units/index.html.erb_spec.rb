# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_units/index" do
  before(:each) do
    assign(:dict_units, [
      stub_model(Dict::Unit,
        :code => "Code",
        :name => "Name"
      ),
      stub_model(Dict::Unit,
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of dict_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
