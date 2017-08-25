require 'rails_helper'

RSpec.describe "OutgoingMails", type: :request do
  describe "GET /outgoing_mails" do
    it "works! (now write some real specs)" do
      get outgoing_mails_path
      expect(response).to have_http_status(200)
    end
  end
end
