#Migration to save the image (link) of the motorcycle model in the database
class AddAttachmentImagetwoToMotorcycles < ActiveRecord::Migration
  def self.up
    change_table :motorcycles do |t|
      t.attachment :imagetwo
    end
  end

  def self.down
    remove_attachment :motorcycles, :imagetwo
  end
end
