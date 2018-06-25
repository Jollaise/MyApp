FactoryBot.define do
  factory :comment do
    sequence(:body) {|n| "TestComment#{n}"}
    rating 4
  end

  trait :no_body do
    body nil
  end

  trait :no_rating do
    rating nil
  end

  trait :rating_not_integer do
    rating 1.6
  end
end
