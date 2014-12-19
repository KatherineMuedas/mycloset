class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.references :picable, polymorphic: true

      t.timestamps
    end
    add_index :pictures, :picable_id
  end
end
