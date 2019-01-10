class Article < ApplicationRecord
    validates_presence_of :title, :description, :content, :journalist
end
