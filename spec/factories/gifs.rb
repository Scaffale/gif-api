FactoryBot.define do
  factory :gif do
    file_name { Faker::LoremFlickr.pixelated_image(size: "32x18") }
    search_term { Faker::Lorem.words }
  end
end
