class AddBoatIdToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :boat_id, :integer
  end
end
