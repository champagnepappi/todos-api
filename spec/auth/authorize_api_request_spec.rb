require 'rails_helper'

RSpec.describe AuthorizeAPiRequest do
  #create test user
  let(:user) {create(:user)}
  #Mock 'athorization header'
  let(:header) {{'Authorization' => token_generator(:user.id)}}

end
