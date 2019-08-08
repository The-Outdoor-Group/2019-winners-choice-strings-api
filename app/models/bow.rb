class Bow < ApplicationRecord
  include PgSearch::Model

  belongs_to :brand
  belongs_to :type

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  pg_search_scope :whose_name_starts_with,
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }
end
