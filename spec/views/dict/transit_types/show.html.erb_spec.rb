# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_transit_types/show" do
  before(:each) do
    @transit_type = assign(:transit_type, stub_model(Dict::TransitType,
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
  end
end
