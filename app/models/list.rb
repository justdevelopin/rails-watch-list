class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, :through => :bookmarks
  validates_uniqueness_of :name
  validates_presence_of :name
end
