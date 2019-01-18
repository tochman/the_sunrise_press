FactoryBot.define do
  factory :user do
    password { 'password' }
    name { 'Jon' }
    email { Faker::Internet.email }

    factory :member do
      email { Faker::Internet.email }
      role { 0 }
    end

    factory :journalist do
      email { Faker::Internet.email }
      role { 1 }
    end

    factory :editor do
      email { Faker::Internet.email }
      role { 2 }
    end
  end
end