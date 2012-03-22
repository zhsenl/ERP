# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :email => "Email",
        :salt => "Salt",
        :encrypted_password => "Encrypted Password",
        :name => "Name",
        :phone => "Phone"
      ),
      stub_model(User,
        :username => "Username",
        :email => "Email",
        :salt => "Salt",
        :encrypted_password => "Encrypted Password",
        :name => "Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
