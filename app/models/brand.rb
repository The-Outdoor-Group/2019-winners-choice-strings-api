class Brand < ApplicationRecord
  has_many :bows
  has_many :types, through: :bows

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
