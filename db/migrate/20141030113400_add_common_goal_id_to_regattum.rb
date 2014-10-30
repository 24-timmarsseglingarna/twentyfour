class AddCommonGoalIdToRegattum < ActiveRecord::Migration
  def change
    add_column :regatta, :common_goal_id, :integer
  end
end
