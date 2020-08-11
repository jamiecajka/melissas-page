class RenameContactsTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :contacts_table_agains, :contacts  
  end
end
