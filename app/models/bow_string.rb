class BowString < ApplicationRecord
  include PgSearch::Model

  # belongs_to :material
  belongs_to :color

  # validates :color_id, uniqueness: { scope: :material_id }
  validates :color_id, uniqueness: true

  validates :materials, :strand_1_image, :strand_2_image, :serving_image, presence: true

  pg_search_scope :search_by_color_id, against: :color_id

  pg_search_scope :whose_name_starts_with,
                  associated_against: {
                    # material: :name,
                    color: :name
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
