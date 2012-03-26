require 'spec_helper'

describe "dict_units/show" do
  before(:each) do
    @unit = assign(:unit, stub_model(Dict::Unit,
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
