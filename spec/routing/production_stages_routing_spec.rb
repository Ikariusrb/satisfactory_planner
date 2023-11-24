require "rails_helper"

RSpec.describe ProductionStagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/production_stages").to route_to("production_stages#index")
    end

    it "routes to #new" do
      expect(get: "/production_stages/new").to route_to("production_stages#new")
    end

    it "routes to #show" do
      expect(get: "/production_stages/1").to route_to("production_stages#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/production_stages/1/edit").to route_to("production_stages#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/production_stages").to route_to("production_stages#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/production_stages/1").to route_to("production_stages#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/production_stages/1").to route_to("production_stages#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/production_stages/1").to route_to("production_stages#destroy", id: "1")
    end
  end
end
