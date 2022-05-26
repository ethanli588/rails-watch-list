class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :list, through: :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
end
