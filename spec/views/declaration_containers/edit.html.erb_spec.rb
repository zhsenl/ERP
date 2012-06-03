require 'spec_helper'

describe "declaration_containers/edit" do
  before(:each) do
    @declaration_container = assign(:declaration_container, stub_model(DeclarationContainer,
      :declaration_id => 1,
      :code => "MyString",
      :container => "MyString",
      :bracket => "MyString",
      :metal_cabinet => "MyString"
    ))
  end

  it "renders the edit declaration_container form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declaration_containers_path(@declaration_container), :method => "post" do
      assert_select "input#declaration_container_declaration_id", :name => "declaration_container[declaration_id]"
      assert_select "input#declaration_container_code", :name => "declaration_container[code]"
      assert_select "input#declaration_container_container", :name => "declaration_container[container]"
      assert_select "input#declaration_container_bracket", :name => "declaration_container[bracket]"
      assert_select "input#declaration_container_metal_cabinet", :name => "declaration_container[metal_cabinet]"
    end
  end
end
