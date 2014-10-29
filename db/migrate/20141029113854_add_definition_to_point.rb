class AddDefinitionToPoint < ActiveRecord::Migration
  def change
    add_column :points, :definition, :string
  end
end
