class Article < ApplicationRecord
    validates_presence_of :title, :description, :content
    belongs_to :category
    belongs_to :user


    def published?
        self.published
    end

    def not_published?
        !self.published
    end
end
