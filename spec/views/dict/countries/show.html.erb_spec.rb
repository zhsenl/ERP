# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "dict_countries/show" do
  before(:each) do
    @country = assign(:country, stub_model(Dict::Country,
      :code => "Code",
      :name => "Name",
      :english_name => "English Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/English Name/)
  end
end
