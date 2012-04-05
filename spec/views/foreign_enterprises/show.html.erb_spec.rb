require 'spec_helper'

describe "foreign_enterprises/show" do
  before(:each) do
    @foreign_enterprise = assign(:foreign_enterprise, stub_model(ForeignEnterprise,
      :code => "Code",
      :name => "Name",
      :address => "Address",
      :linkman => "Linkman",
      :telephone => "Telephone",
      :fax => "Fax"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Linkman/)
    rendered.should match(/Telephone/)
    rendered.should match(/Fax/)
  end
end
