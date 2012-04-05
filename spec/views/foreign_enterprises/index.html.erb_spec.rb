require 'spec_helper'

describe "foreign_enterprises/index" do
  before(:each) do
    assign(:foreign_enterprises, [
      stub_model(ForeignEnterprise,
        :code => "Code",
        :name => "Name",
        :address => "Address",
        :linkman => "Linkman",
        :telephone => "Telephone",
        :fax => "Fax"
      ),
      stub_model(ForeignEnterprise,
        :code => "Code",
        :name => "Name",
        :address => "Address",
        :linkman => "Linkman",
        :telephone => "Telephone",
        :fax => "Fax"
      )
    ])
  end

  it "renders a list of foreign_enterprises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Linkman".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
  end
end
