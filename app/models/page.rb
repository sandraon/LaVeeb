class Page < ApplicationRecord
  validates_uniqueness_of :slug
  validates :heading, :slug, :content, presence: true
end
