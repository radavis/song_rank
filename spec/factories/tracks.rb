# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    number 1
    name "MyString"
    duration 1
    album_id 1
  end
end
