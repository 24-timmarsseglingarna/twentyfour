class AddCommonGoalOnlyToRegattum < ActiveRecord::Migration
  def change
    add_column :regatta, :common_goal_only, :boolean
  end
end
