FactoryBot.define do
  factory :user do
    first_name { "Test" }
    sequence(:last_name) { |x| "Surnamer#{x}" }
    sequence(:email) { |x| "Text.Surnamer#{x}@abc.xyz" }
    phone { rand(10**9..10**10) }
  end
end

