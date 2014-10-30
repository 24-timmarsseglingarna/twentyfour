class AddCommonGoalToCrew < ActiveRecord::Migration
  def change
    add_column :crews, :common_goal, :boolean
  end
end
