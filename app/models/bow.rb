class Bow < ApplicationRecord
  belongs_to :brand
  belongs_to :type

  validates :name, presence: true, uniqueness: true
end
