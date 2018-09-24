require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  describe 'POST /auth/login' do
    let(:user) {create(:user)}
    let(:headers) {valid_headers.except('Authorization')}
  end
end
