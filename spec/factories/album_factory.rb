FactoryGirl.define do
  factory :album do
    title Faker::Lorem.sentence
    artist Faker::Name.name
    price Faker::Number.digit
  end
end
