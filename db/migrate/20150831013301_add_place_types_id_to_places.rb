class AddPlaceTypesIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :place_types_id, :integer
  end
end
