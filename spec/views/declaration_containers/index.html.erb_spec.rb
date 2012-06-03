require 'spec_helper'

describe "declaration_containers/index" do
  before(:each) do
    assign(:declaration_containers, [
      stub_model(DeclarationContainer,
        :declaration_id => 1,
        :code => "Container No",
        :container => "Container",
        :bracket => "Bracket",
        :metal_cabinet => "Metal Cabinet"
      ),
      stub_model(DeclarationContainer,
        :declaration_id => 1,
        :code => "Container No",
        :container => "Container",
        :bracket => "Bracket",
        :metal_cabinet => "Metal Cabinet"
      )
    ])
  end

  it "renders a list of declaration_containers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Container No".to_s, :count => 2
    assert_select "tr>td", :text => "Container".to_s, :count => 2
    assert_select "tr>td", :text => "Bracket".to_s, :count => 2
    assert_select "tr>td", :text => "Metal Cabinet".to_s, :count => 2
  end
end
