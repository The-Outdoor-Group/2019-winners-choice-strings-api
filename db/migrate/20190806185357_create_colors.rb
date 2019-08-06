class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :code
      t.integer :count

      t.timestamps
    end
  end
end
