class Brand < ApplicationRecord
  include PgSearch::Model

  has_many :bows
  has_many :types, through: :bows

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  pg_search_scope :whose_name_starts_with,
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }
end
