class AddTimeToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :time, :string
  end
end
