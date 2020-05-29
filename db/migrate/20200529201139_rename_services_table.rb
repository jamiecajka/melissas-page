class RenameServicesTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :services_tables, :services
  end
end
