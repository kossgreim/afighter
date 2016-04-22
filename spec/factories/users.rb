FactoryGirl.define do
  factory :user do
    name { FFaker::Name.name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password(8,20) }
  end
end
