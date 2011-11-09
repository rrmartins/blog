require "spec_helper"

describe CategoriaController do
  describe "routing" do

    it "routes to #index" do
      get("/categoria").should route_to("categoria#index")
    end

    it "routes to #new" do
      get("/categoria/new").should route_to("categoria#new")
    end

    it "routes to #show" do
      get("/categoria/1").should route_to("categoria#show", :id => "1")
    end

    it "routes to #edit" do
      get("/categoria/1/edit").should route_to("categoria#edit", :id => "1")
    end

    it "routes to #create" do
      post("/categoria").should route_to("categoria#create")
    end

    it "routes to #update" do
      put("/categoria/1").should route_to("categoria#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/categoria/1").should route_to("categoria#destroy", :id => "1")
    end

  end
end
