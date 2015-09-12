class AddUserIdToPlacesPics < ActiveRecord::Migration
  def change
    add_column :places_pics, :user_id, :integer
  end
end
