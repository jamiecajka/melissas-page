class CreateServicesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :services_tables do |t|
      t.string :name, null: false
      t.string :price, null: false
      t.text :description
    end
  end
end
