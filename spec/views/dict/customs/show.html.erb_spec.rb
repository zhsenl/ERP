require 'spec_helper'

describe "dict_customs/show" do
  before(:each) do
    @custom = assign(:custom, stub_model(Dict::Custom,
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
