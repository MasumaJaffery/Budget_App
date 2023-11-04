FactoryBot.define do
  factory :category do
        name { "Some Category" }
        icon { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'images', 'sample_icon.png'), 'image/png') }
    
    association :user, factory: :user
  end
end
