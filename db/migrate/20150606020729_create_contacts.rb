class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :telephone
      t.text :message

      t.timestamps null: false
    end
  end
end
