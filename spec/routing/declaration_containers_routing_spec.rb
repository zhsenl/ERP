require "spec_helper"

describe DeclarationContainersController do
  describe "routing" do

    it "routes to #index" do
      get("/declaration_containers").should route_to("declaration_containers#index")
    end

    it "routes to #new" do
      get("/declaration_containers/new").should route_to("declaration_containers#new")
    end

    it "routes to #show" do
      get("/declaration_containers/1").should route_to("declaration_containers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declaration_containers/1/edit").should route_to("declaration_containers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declaration_containers").should route_to("declaration_containers#create")
    end

    it "routes to #update" do
      put("/declaration_containers/1").should route_to("declaration_containers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declaration_containers/1").should route_to("declaration_containers#destroy", :id => "1")
    end

  end
end
