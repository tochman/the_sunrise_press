class Article < ApplicationRecord
    validates_presence_of :title, :description, :content
    belongs_to :category
    belongs_to :user
end
