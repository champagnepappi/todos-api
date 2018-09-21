require 'rails_helper'

RSPec.describe AuthenticateUser do
  let(:user) { create(:user) }
  #valid request subject
  subject(:valid_auth_obj) {described_class.new(user.email, user.password)}
  #invalid request subject
  subject(:invalid_auth_obj) {described_class.new('foo', 'bar')}

  #Test suite for Authentication#call
  describe '#call' do
    #return token when valid request
    context 'when valid credentials' do
      it 'returns an auth token' do
        token = valid_auth_obj.call
        expect(token).not_to be_nil
      end
    end
  end
end
