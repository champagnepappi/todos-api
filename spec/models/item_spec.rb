require 'rails_helper'

RSpec.describe Item, type: :model do
  #ensure item belongs to a todo
  it {should belong_to(:todo)}

  #ensure column name is present
  it { should validate_presence_of(:name) }
end
