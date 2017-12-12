require 'rails_helper'

RSpec.describe Todo, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  #ensure Todo model has one to many relationships
  it { should have_many(:items).dependent(:destroy) }
end
