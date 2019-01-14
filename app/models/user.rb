class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum role: {member: 0, journalist: 1}
  has_many :articles
end
