class CreatePlacesPics < ActiveRecord::Migration
  def change
    create_table :places_pics do |t|
      t.string :title
      t.text :body
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
