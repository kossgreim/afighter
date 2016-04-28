FactoryGirl.define do
  factory :record do
    qt { Random.rand(1..25) }
    user
    record_type
  end
end
