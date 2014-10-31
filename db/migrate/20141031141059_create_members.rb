class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :crew_id
      t.integer :person_id
      t.boolean :captain

      t.timestamps
    end
    add_index :members, [:person_id, :crew_id], :unique => true
  end
end
