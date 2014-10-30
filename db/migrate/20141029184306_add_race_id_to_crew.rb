class AddRaceIdToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :race_id, :integer
  end
end
