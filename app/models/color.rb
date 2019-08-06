class Color < ApplicationRecord
  has_many :bow_strings
  has_many :materials, through: :bow_strings
end
