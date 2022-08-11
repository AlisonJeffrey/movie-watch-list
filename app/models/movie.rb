class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# Associations:
# A movie has many bookmarks
# You can’t delete a movie if it is referenced in at least one bookmark.

# Validations:
# A movie must have a unique title and an overview.

# dependent: :restrict_with_error
