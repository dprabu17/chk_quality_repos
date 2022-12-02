require 'rails_helper'

RSpec.describe "Api::V1::PostsController", type: :request do
  describe "GET /api/v1/posts" do
    it "works!" do
      get api_v1_posts_path
      expect(response).to have_http_status(200)
    end
    it "works!" do
      headers = { "ACCEPT" => "application/json" }
      post "/api/v1/posts", :params => { :post => { :title => "My Book" } }, :headers => headers
      expect(response).to have_http_status(200)
    end
  end
end
