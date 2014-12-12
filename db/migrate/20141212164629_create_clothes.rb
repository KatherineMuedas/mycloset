class CreateClothes < ActiveRecord::Migration
  def change
    create_table :clothes do |t|
      t.string :name
      t.date :purchase_at
      t.string :state_category
      t.string :brand
      t.text :notes
      t.string :type_category
      t.belongs_to :closet, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
