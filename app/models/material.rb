class Material < ApplicationRecord
  has_many :bow_strings
  has_many :colors, through: :bow_strings
end
