class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum role: {member: 0, journalist: 1, editor: 2}
  has_many :articles
end
