require 'spec_helper'

describe "declaration_containers/new" do
  before(:each) do
    assign(:declaration_container, stub_model(DeclarationContainer,
      :declaration_id => 1,
      :code => "MyString",
      :container => "MyString",
      :bracket => "MyString",
      :metal_cabinet => "MyString"
    ).as_new_record)
  end

  it "renders new declaration_container form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => declaration_containers_path, :method => "post" do
      assert_select "input#declaration_container_declaration_id", :name => "declaration_container[declaration_id]"
      assert_select "input#declaration_container_code", :name => "declaration_container[code]"
      assert_select "input#declaration_container_container", :name => "declaration_container[container]"
      assert_select "input#declaration_container_bracket", :name => "declaration_container[bracket]"
      assert_select "input#declaration_container_metal_cabinet", :name => "declaration_container[metal_cabinet]"
    end
  end
end
