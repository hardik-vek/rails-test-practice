FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    description { Faker::Book.title }
  end
end
