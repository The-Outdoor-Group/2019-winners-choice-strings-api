class Bow < ApplicationRecord
  include PgSearch::Model

  belongs_to :brand
  belongs_to :type

  validates :name, presence: true, uniqueness: true

  pg_search_scope :search_by_name, against: :name
  pg_search_scope :whose_name_starts_with,
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }
end
