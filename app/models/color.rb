class Color < ApplicationRecord
  include PgSearch::Model

  has_many :bow_strings
  has_many :materials, through: :bow_strings

  validates :name, :code, presence: true, uniqueness: { case_sensitive: false }
  validates :count, presence: true
  validates :swatch_url, presence: true

  pg_search_scope :search_by_name, against: :name
  pg_search_scope :search_by_code, against: :code

  pg_search_scope :whose_name_or_code_starts_with,
                  against: [:name, :code],
                  using: {
                    tsearch: { prefix: true }
                  }
end
