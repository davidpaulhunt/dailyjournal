FactoryBot.define do
  factory :post do
    created_at { Time.now }
    body { Faker::Lorem.sentence(3) }
    user
  end
end
