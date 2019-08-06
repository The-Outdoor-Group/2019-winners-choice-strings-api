class CreateBowStrings < ActiveRecord::Migration[5.2]
  def change
    create_table :bow_strings do |t|
      t.string :strand_1_image
      t.string :strand_2_image
      t.string :serving_image
      t.integer :color_id
      t.integer :material_id

      t.timestamps
    end
  end
end
