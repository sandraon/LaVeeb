class Page < ApplicationRecord
  validates_uniqueness_of :slug
  validates :slug, presence: true
end
