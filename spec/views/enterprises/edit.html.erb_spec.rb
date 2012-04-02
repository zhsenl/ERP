# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "enterprises/edit" do
  before(:each) do
    @enterprise = assign(:enterprise, stub_model(Enterprise,
      :trade_code => "MyString",
      :registe_name => "MyString",
      :address => "MyString",
      :linkman => "MyString",
      :legal_person_code => "MyString",
      :telephone => "MyString",
      :fax => "MyString",
      :bank => "MyString",
      :bank_account => "MyString"
    ))
  end

  it "renders the edit enterprise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enterprises_path(@enterprise), :method => "post" do
      assert_select "input#enterprise_trade_code", :name => "enterprise[trade_code]"
      assert_select "input#enterprise_registe_name", :name => "enterprise[registe_name]"
      assert_select "input#enterprise_address", :name => "enterprise[address]"
      assert_select "input#enterprise_linkman", :name => "enterprise[linkman]"
      assert_select "input#enterprise_legal_person_code", :name => "enterprise[legal_person_code]"
      assert_select "input#enterprise_telephone", :name => "enterprise[telephone]"
      assert_select "input#enterprise_fax", :name => "enterprise[fax]"
      assert_select "input#enterprise_bank", :name => "enterprise[bank]"
      assert_select "input#enterprise_bank_account", :name => "enterprise[bank_account]"
    end
  end
end
