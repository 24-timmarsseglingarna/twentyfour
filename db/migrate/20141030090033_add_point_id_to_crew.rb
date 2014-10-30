class AddPointIdToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :point_id, :integer
  end
end
