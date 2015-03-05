FactoryGirl.define do
  factory :song do
    title Faker::Lorem.sentence
    artist Faker::Name.name
    duration Faker::Number.number(3)
    album
  end
end
