FactoryBot.define do
  factory :conversation do
    name { "Test" }
    phone { rand(10**9..10**10) }
    sequence(:text_message) { |x| "This is a message good message for the #{(x+1).ordinalize}" }

    user
  end
end
