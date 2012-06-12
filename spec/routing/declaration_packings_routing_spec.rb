require "spec_helper"

describe DeclarationPackingsController do
  describe "routing" do

    it "routes to #index" do
      get("/declaration_packings").should route_to("declaration_packings#index")
    end

    it "routes to #new" do
      get("/declaration_packings/new").should route_to("declaration_packings#new")
    end

    it "routes to #show" do
      get("/declaration_packings/1").should route_to("declaration_packings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declaration_packings/1/edit").should route_to("declaration_packings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declaration_packings").should route_to("declaration_packings#create")
    end

    it "routes to #update" do
      put("/declaration_packings/1").should route_to("declaration_packings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declaration_packings/1").should route_to("declaration_packings#destroy", :id => "1")
    end

  end
end
