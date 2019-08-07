class Color < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_name, against: :name
  pg_search_scope :search_by_code, against: :code

  has_many :bow_strings
  has_many :materials, through: :bow_strings

  pg_search_scope :search_by_name, against: :name
  pg_search_scope :whose_name_starts_with,
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }
end
