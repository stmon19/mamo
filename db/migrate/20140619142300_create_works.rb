class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :image
      t.string :year
      t.string :title
      t.text :description
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
