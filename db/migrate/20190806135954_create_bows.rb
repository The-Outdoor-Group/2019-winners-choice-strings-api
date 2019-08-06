class CreateBows < ActiveRecord::Migration[5.2]
  def change
    create_table :bows do |t|
      t.integer :brand_id
      t.integer :type_id
      t.string :name

      t.timestamps
    end
  end
end
