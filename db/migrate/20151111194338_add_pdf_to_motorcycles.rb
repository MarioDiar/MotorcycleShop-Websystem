class AddPdfToMotorcycles < ActiveRecord::Migration
  def change
  	add_attachment :motorcycles,:pdf
  end
end
