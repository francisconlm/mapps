class AddAttachmentImageToPlacesPics < ActiveRecord::Migration
  def self.up
    change_table :places_pics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :places_pics, :image
  end
end
