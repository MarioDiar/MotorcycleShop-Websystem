class AddAttachmentImagethreeToMotorcycles < ActiveRecord::Migration
  def self.up
    change_table :motorcycles do |t|
      t.attachment :imagethree
    end
  end

  def self.down
    remove_attachment :motorcycles, :imagethree
  end
end
