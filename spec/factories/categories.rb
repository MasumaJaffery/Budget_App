FactoryBot.define do
  factory :category do
    name { 'Some Category' }
    icon do
      Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'images', 'sample_icon.png'), 'image/png')
    end

    association :user, factory: :user
  end
end
