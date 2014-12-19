class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.integer :picable_id
      t.string :picable

      t.timestamps
    end
    add_index :pictures, [:picable_id, :picable]
  end
end
