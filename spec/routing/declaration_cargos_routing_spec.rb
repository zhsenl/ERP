require "spec_helper"

describe DeclarationCargosController do
  describe "routing" do

    it "routes to #index" do
      get("/declaration_cargos").should route_to("declaration_cargos#index")
    end

    it "routes to #new" do
      get("/declaration_cargos/new").should route_to("declaration_cargos#new")
    end

    it "routes to #show" do
      get("/declaration_cargos/1").should route_to("declaration_cargos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/declaration_cargos/1/edit").should route_to("declaration_cargos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/declaration_cargos").should route_to("declaration_cargos#create")
    end

    it "routes to #update" do
      put("/declaration_cargos/1").should route_to("declaration_cargos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/declaration_cargos/1").should route_to("declaration_cargos#destroy", :id => "1")
    end

  end
end
