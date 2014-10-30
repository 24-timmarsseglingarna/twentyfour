class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :boat_type
      t.string :sail_number

      t.timestamps
    end
  end
end
