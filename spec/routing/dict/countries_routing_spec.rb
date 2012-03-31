require "spec_helper"

describe Dict::CountriesController do
  describe "routing" do

    it "routes to #index" do
      get("/dict_countries").should route_to("dict_countries#index")
    end

    it "routes to #new" do
      get("/dict_countries/new").should route_to("dict_countries#new")
    end

    it "routes to #show" do
      get("/dict_countries/1").should route_to("dict_countries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dict_countries/1/edit").should route_to("dict_countries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dict_countries").should route_to("dict_countries#create")
    end

    it "routes to #update" do
      put("/dict_countries/1").should route_to("dict_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dict_countries/1").should route_to("dict_countries#destroy", :id => "1")
    end

  end
end
