class AddRegattumIdToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :regattum_id, :integer
  end
end
