class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id, message: "has already added to this list" }
  belongs_to :list
  belongs_to :movie
end
