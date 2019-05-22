class News < ApplicationRecord
    validates :heading, :content, presence: true
end
