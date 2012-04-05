# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "foreign_enterprises/edit" do
  before(:each) do
    @foreign_enterprise = assign(:foreign_enterprise, stub_model(ForeignEnterprise,
      :code => "MyString",
      :name => "MyString",
      :address => "MyString",
      :linkman => "MyString",
      :telephone => "MyString",
      :fax => "MyString"
    ))
  end

  it "renders the edit foreign_enterprise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foreign_enterprises_path(@foreign_enterprise), :method => "post" do
      assert_select "input#foreign_enterprise_code", :name => "foreign_enterprise[code]"
      assert_select "input#foreign_enterprise_name", :name => "foreign_enterprise[name]"
      assert_select "input#foreign_enterprise_address", :name => "foreign_enterprise[address]"
      assert_select "input#foreign_enterprise_linkman", :name => "foreign_enterprise[linkman]"
      assert_select "input#foreign_enterprise_telephone", :name => "foreign_enterprise[telephone]"
      assert_select "input#foreign_enterprise_fax", :name => "foreign_enterprise[fax]"
    end
  end
end
