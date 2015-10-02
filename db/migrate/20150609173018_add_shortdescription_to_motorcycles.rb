#Migration that modifies the motorcycle model, removing description and adding a small and big description
class AddShortdescriptionToMotorcycles < ActiveRecord::Migration
  def change
  	remove_column :motorcycles, :description, :text
  	add_column :motorcycles, :descriptionshort, :text
  	add_column :motorcycles, :descriptionbig, :text
  end
end
