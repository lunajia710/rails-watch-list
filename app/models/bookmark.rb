class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "has already added to this list" }
  belongs_to :list
  belongs_to :movie
end
