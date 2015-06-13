class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.date :year
      t.text :description
      t.integer :sort

      t.timestamps
    end
  end
end
