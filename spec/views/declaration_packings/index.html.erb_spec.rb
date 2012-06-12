require 'spec_helper'

describe "declaration_packings/index" do
  before(:each) do
    assign(:declaration_packings, [
      stub_model(DeclarationPacking,
        :declaration_id => 1,
        :name => "Name",
        :package_amount => 2,
        :quantity => "9.99",
        :unit => "Unit",
        :gross_weight => "9.99",
        :net_weight => "9.99",
        :gross_weight_per_package => "9.99",
        :net_weight_per_package => "9.99"
      ),
      stub_model(DeclarationPacking,
        :declaration_id => 1,
        :name => "Name",
        :package_amount => 2,
        :quantity => "9.99",
        :unit => "Unit",
        :gross_weight => "9.99",
        :net_weight => "9.99",
        :gross_weight_per_package => "9.99",
        :net_weight_per_package => "9.99"
      )
    ])
  end

  it "renders a list of declaration_packings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
