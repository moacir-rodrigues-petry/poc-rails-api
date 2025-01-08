require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end

    it 'returns all users as JSON' do
      user1 = User.create!(name: 'John Doe', email: 'john@example.com')
      user2 = User.create!(name: 'Jane Doe', email: 'jane@example.com')

      get :index
      json_response = JSON.parse(response.body)

      expect(json_response.length).to eq(2)
      expect(json_response[0]['name']).to eq(user1.name)
      expect(json_response[1]['name']).to eq(user2.name)
    end
  end
end
