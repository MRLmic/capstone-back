require 'rails_helper'

RSpec.describe "Arguments", type: :request do
  describe "GET /arguments" do
    it "works! (now write some real specs)" do
      get arguments_path
      expect(response).to have_http_status(200)
    end
  end
end
