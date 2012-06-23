require "spec_helper"

describe Dict::TransitTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/dict_transit_types").should route_to("dict_transit_types#index")
    end

    it "routes to #new" do
      get("/dict_transit_types/new").should route_to("dict_transit_types#new")
    end

    it "routes to #show" do
      get("/dict_transit_types/1").should route_to("dict_transit_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dict_transit_types/1/edit").should route_to("dict_transit_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dict_transit_types").should route_to("dict_transit_types#create")
    end

    it "routes to #update" do
      put("/dict_transit_types/1").should route_to("dict_transit_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dict_transit_types/1").should route_to("dict_transit_types#destroy", :id => "1")
    end

  end
end
