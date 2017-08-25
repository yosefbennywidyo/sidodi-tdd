require 'rails_helper'

RSpec.describe "IncomingMails", type: :request do
  describe "GET /incoming_mails" do
    it "works! (now write some real specs)" do
      get incoming_mails_path
      expect(response).to have_http_status(200)
    end
  end
end
