class CreatePlaceTypes < ActiveRecord::Migration
  def change
    create_table :place_types do |t|
      t.string :name
      t.text :body

      t.timestamps null: false
    end
  end
end
