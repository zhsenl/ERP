require 'spec_helper'

describe "contract_consumptions/edit" do
  before(:each) do
    @contract_consumption = assign(:contract_consumption, stub_model(ContractConsumption,
      :contract_production_id => 1,
      :contract_material_id => 1,
      :used => "9.99",
      :wasted => "9.99"
    ))
  end

  it "renders the edit contract_consumption form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_consumptions_path(@contract_consumption), :method => "post" do
      assert_select "input#contract_consumption_contract_production_id", :name => "contract_consumption[contract_production_id]"
      assert_select "input#contract_consumption_contract_material_id", :name => "contract_consumption[contract_material_id]"
      assert_select "input#contract_consumption_used", :name => "contract_consumption[used]"
      assert_select "input#contract_consumption_wasted", :name => "contract_consumption[wasted]"
    end
  end
end
