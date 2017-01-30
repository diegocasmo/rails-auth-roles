FactoryGirl.define do

  factory :user do
    # Avoid duplicate emails by chance
    sequence(:email) { |n| "#{n}_foo@foo.foo" }
    password 'password'
  end
end
