class AddDirectionsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :directions_tables do |t|
      t.string :starting_location
      t.string :step_one
      t.string :step_two
      t.string :step_three
      t.string :step_four
      t.string :step_five
      t.string :step_six
    end
  end
end
