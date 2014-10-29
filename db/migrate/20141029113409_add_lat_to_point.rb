class AddLatToPoint < ActiveRecord::Migration
  def change
    add_column :points, :lat, :string
  end
end
