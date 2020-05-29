class CreateContactsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :address
      t.string :city
      t.string :zip
      t.string :phone, null: false
      t.string :email, null: false
      t.text :bio
      t.string :facebook
      t.string :instagram
      t.string :snapchat
      t.string :extra_one
      t.string :extra_two
    end
  end
end
