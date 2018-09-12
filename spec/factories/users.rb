FactoryBot.define do
  factory :user do
    name {Faker::Name.name}
    email 'myemail@mail.com'
    password 'password'
  end
end
