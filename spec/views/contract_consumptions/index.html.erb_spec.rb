# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_consumptions/index" do
  before(:each) do
    assign(:contract_consumptions, [
      stub_model(ContractConsumption,
        :contract_product_id => 1,
        :contract_material_id => 2,
        :used => "9.99",
        :wasted => "9.99"
      ),
      stub_model(ContractConsumption,
        :contract_product_id => 1,
        :contract_material_id => 2,
        :used => "9.99",
        :wasted => "9.99"
      )
    ])
  end

  it "renders a list of contract_consumptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
