FactoryBot.define do
     sequence(:name) {|n| "TestProduct#{n}"}
  factory :product do
    name
    description "Example Description"
    price 549.00
  end
end
