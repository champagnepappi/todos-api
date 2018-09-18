require 'rails_helper'

RSpec.describe AuthorizeAPiRequest do
  #create test user
  let(:user) {create(:user)}
  #Mock 'athorization header'
  let(:header) {{'Authorization' => token_generator(:user.id)}}
  subject(:invalid_request_obj) { described_class.new({}) }
  subject(:request_job) {described_class.new(header)}

  describe '#call' do
    context 'when valid request' do
      it 'returns user object' do
        result = request_obj.call
        expect(result[:user]).to eq(user)
      end
    end
  end

end
