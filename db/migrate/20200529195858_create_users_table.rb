class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users_tables do |t|
      t.string :name
    end
  end
end
