class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps null: false
    end
  end
end
