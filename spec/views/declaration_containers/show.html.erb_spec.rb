require 'spec_helper'

describe "declaration_containers/show" do
  before(:each) do
    @declaration_container = assign(:declaration_container, stub_model(DeclarationContainer,
      :declaration_id => 1,
      :code => "Container No",
      :container => "Container",
      :bracket => "Bracket",
      :metal_cabinet => "Metal Cabinet"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Container No/)
    rendered.should match(/Container/)
    rendered.should match(/Bracket/)
    rendered.should match(/Metal Cabinet/)
  end
end
