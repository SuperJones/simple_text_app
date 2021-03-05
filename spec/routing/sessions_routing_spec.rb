require "rails_helper"

RSpec.describe SessionsController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/login").to route_to("sessions#new")
      expect(:get => login_path).to route_to(:controller => "sessions", :action => "new")
    end

    it "routes to #create" do
      expect(:post => "/login").to route_to("sessions#create")
    end

    it "routes to #destroy" do
      expect(:get => logout_path).to route_to(:controller => "sessions", :action => "destroy")
    end
  end
end