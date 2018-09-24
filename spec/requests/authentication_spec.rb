require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  describe 'POST /auth/login' do
    let(:user) {create(:user)}
    let(:headers) {valid_headers.except('Authorization')}
    let(:valid_credentials) do
      {
        email: user.email,
        password: user.password
      }.to_json
    end

    let(:invalid_credentials) do
      {
        email: Faker::Internet.email,
        password: Faker::Internet.password
      }
    end
  end
end
