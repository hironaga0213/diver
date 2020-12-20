FactoryBot.define do
  factory :topic do
    title {Faker::Lorem.sentence}
    place {Faker::Lorem.sentence}
    impression {Faker::Lorem.sentence}
    association :user 

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
