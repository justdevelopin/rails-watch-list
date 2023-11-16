class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  # validates_uniqueness_of :title,
  #                         scope: :movie,
  #                         conditions: -> { where.not(status: ['Dropped', 'Rejected']) }
  validates :list_id, uniqueness: { scope: :movie_id }
  # validates_uniqueness_of :name, :scope => :list_id
end
