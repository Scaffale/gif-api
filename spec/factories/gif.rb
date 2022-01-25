FactoryBot.define do
  factory :gif, class: GifPresenter do
    public_path { Faker::LoremFlickr.pixelated_image(size: "32x18") }

    initialize_with { new(public_path:) }
  end
end
