require 'rails_helper'

RSpec.describe Item, type: :model do
  #ensure item belongs to a todo
  it {should belong_to(:todo)}

end
