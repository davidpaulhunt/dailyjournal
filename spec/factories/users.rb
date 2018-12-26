FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    password { 'password' }
  end
end
