require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'GET index' do
    before do
      user = create(:user)
      create_list(:post, 5, user: user)
    end

    it 'returns 200' do
      get posts_path
      expect(response).to have_http_status(:ok)
    end

    it 'returns data as an array' do
      get posts_path
      expect(JSON.parse(response.body).length).to eq(5)
    end
  end
end
