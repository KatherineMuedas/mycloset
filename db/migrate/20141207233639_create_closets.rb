class CreateClosets < ActiveRecord::Migration
  def change
    create_table :closets do |t|
      t.string :category
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
