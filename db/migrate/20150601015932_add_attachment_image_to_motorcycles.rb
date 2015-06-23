class AddAttachmentImageToMotorcycles < ActiveRecord::Migration
  def self.up
    change_table :motorcycles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :motorcycles, :image
  end
end
