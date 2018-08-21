require 'rails_helper'

RSpec.describe "Jokes", type: :request do
  describe "GET /jokes" do
    it "works! (now write some real specs)" do
      get jokes_path
      expect(response).to have_http_status(200)
    end
  end
end
