class UpdateDirectionTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :directions_tables, :directions 
  end
end
