class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates_associated :movie, :list
  validates_uniqueness_of :movie, scope: [:list]
end

# Associations:
# A bookmark belongs to a movie
# A bookmark belongs to a list

# Validations:
# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
