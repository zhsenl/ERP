require "spec_helper"

describe Dict::UnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/dict_units").should route_to("dict_units#index")
    end

    it "routes to #new" do
      get("/dict_units/new").should route_to("dict_units#new")
    end

    it "routes to #show" do
      get("/dict_units/1").should route_to("dict_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dict_units/1/edit").should route_to("dict_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dict_units").should route_to("dict_units#create")
    end

    it "routes to #update" do
      put("/dict_units/1").should route_to("dict_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dict_units/1").should route_to("dict_units#destroy", :id => "1")
    end

  end
end
