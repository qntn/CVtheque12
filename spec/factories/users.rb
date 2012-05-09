# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password "loremipsum"
    cv Tempfile.new "lorem.pdf"
  end
end
