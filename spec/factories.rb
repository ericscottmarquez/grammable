FactoryBot.define do
  factory :comment do
    
  end

  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end

  factory :gram do
    message { "hello" }
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', '2ee.png').to_s, 'image/png') }
    association :user
  end

end
# this creates dummy data for the user tests to reduce clutter

