class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :colony
      t.string :street
      t.string :telephone
      t.string :email

      t.timestamps null: false
    end
  end
end
