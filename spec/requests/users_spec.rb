require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let(:user) {build(:user)}
  let(:headers) { valid_headers.except('Authorization') }
end
