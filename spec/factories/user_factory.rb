FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@test.com" }
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false

    trait :admin do
      admin true
    end
  end
end
