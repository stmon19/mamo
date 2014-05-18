class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :location
      t.text :location_address
      t.text :content
      t.string :permalink
      t.date :start_date
      t.date :close_date

      t.timestamps
    end
  end
end
