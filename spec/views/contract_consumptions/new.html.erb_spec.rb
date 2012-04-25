# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contract_consumptions/new" do
  before(:each) do
    assign(:contract_consumption, stub_model(ContractConsumption,
      :contract_product_id => 1,
      :contract_material_id => 1,
      :used => "9.99",
      :wasted => "9.99"
    ).as_new_record)
  end

  it "renders new contract_consumption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_consumptions_path, :method => "post" do
      assert_select "input#contract_consumption_contract_product_id", :name => "contract_consumption[contract_product_id]"
      assert_select "input#contract_consumption_contract_material_id", :name => "contract_consumption[contract_material_id]"
      assert_select "input#contract_consumption_used", :name => "contract_consumption[used]"
      assert_select "input#contract_consumption_wasted", :name => "contract_consumption[wasted]"
    end
  end
end
