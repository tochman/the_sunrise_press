FactoryBot.define do
  factory :article do
    title { 'An article' }
    description { 'It is not long' }
    content { 'As I told you, that is it' }
    journalist { 'Jon' }
  end
end
