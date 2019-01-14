FactoryBot.define do
  factory :user do
    password { 'password' }

    factory :member do
      email { 'mail@mail.com' }
      role { 0 }
    end

    factory :journalist do
      email { 'mail@mail.com' }
      role { 1 }
    end
  end
end
