FactoryGirl.define do
  factory :record_type do
    name { FFaker::Lorem.characters(10) }
    user
  end
end
