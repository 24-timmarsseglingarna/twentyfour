class AddLongToPoint < ActiveRecord::Migration
  def change
    add_column :points, :long, :string
  end
end
