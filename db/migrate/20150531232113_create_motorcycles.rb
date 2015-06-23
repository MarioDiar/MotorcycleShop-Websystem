class CreateMotorcycles < ActiveRecord::Migration
  def change
    create_table :motorcycles do |t|
      t.string :model
      t.text :description
      t.string :price

      t.timestamps null: false
    end
  end
end
