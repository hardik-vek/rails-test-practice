FactoryBot.define do
  factory :user do
    name { Faker::Name.name}
    email { Faker::Internet.email}
    phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
    password { Faker::Internet.password}
  end
end
