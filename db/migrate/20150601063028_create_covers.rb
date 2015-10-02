#Migration to create the covers model in the database
class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
