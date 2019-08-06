class Type < ApplicationRecord
  has_many :bows

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
