require 'rails_helper'

RSPec.describe AuthenticateUser do
  let(:user) { create(:user) }
  subject(:valid_auth_obj) {described_class.new(user.email, user.password)}
end
