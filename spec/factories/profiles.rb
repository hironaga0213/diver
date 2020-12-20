FactoryBot.define do
  factory :profile do
    prefecture_id       {Faker::Number.between(from: 2, to: 48)}
    license_id          {Faker::Number.between(from: 2, to: 8)}
    career_id           {Faker::Number.between(from: 2, to: 8)}
    holiday_id          {Faker::Number.between(from: 2, to: 4)}
    marriage_id         {Faker::Number.between(from: 2, to: 3)}
    favorite_diving_id  {Faker::Number.between(from: 2, to: 3)}
    favorite_fish_id    {Faker::Number.between(from: 2, to: 11)}
    favorite_place_id   {Faker::Number.between(from: 2, to: 15)}
    favorite_sea_id     {Faker::Number.between(from: 2, to: 7)}
    introduction        {Faker::Lorem.sentence}
    association :user
  end
end
