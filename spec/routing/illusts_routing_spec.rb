require "spec_helper"

describe IllustsController do
  describe "routing" do

    it "routes to #index" do
      get("/illusts").should route_to("illusts#index")
    end

    it "routes to #new" do
      get("/illusts/new").should route_to("illusts#new")
    end

    it "routes to #show" do
      get("/illusts/1").should route_to("illusts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/illusts/1/edit").should route_to("illusts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/illusts").should route_to("illusts#create")
    end

    it "routes to #update" do
      put("/illusts/1").should route_to("illusts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/illusts/1").should route_to("illusts#destroy", :id => "1")
    end

  end
end
