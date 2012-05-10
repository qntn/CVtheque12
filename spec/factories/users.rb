# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'q.d@gmail.com'
    password 'loremipsum'
    cv Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/cv1.pdf", 'application/pdf', true)
  end
end
