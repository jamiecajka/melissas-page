class AddCatagoryToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :catagory, :string
  end
end
