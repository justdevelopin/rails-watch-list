class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, :through => :bookmarks
  validates_presence_of :title, :overview
  # validates :title, presence: true
  validates_uniqueness_of :title
end
