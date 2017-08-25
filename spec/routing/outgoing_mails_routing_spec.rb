require "rails_helper"

RSpec.describe OutgoingMailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/outgoing_mails").to route_to("outgoing_mails#index")
    end

    it "routes to #new" do
      expect(:get => "/outgoing_mails/new").to route_to("outgoing_mails#new")
    end

    it "routes to #show" do
      expect(:get => "/outgoing_mails/1").to route_to("outgoing_mails#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/outgoing_mails/1/edit").to route_to("outgoing_mails#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/outgoing_mails").to route_to("outgoing_mails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/outgoing_mails/1").to route_to("outgoing_mails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/outgoing_mails/1").to route_to("outgoing_mails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/outgoing_mails/1").to route_to("outgoing_mails#destroy", :id => "1")
    end

  end
end
