class Material < ApplicationRecord
  has_many :bow_strings
  has_many :colors, through: :bow_strings

  validates :name, presence: true
  validates :description, presence: true
end
