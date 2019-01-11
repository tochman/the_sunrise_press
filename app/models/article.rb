class Article < ApplicationRecord
    validates_presence_of :title, :description, :content, :journalist
    belongs_to :category
end
