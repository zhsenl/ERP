# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_consumptions/show" do
  before(:each) do
    @contract_consumption = assign(:contract_consumption, stub_model(ContractConsumption,
      :contract_production_id => 1,
      :contract_material_id => 2,
      :used => "9.99",
      :wasted => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
