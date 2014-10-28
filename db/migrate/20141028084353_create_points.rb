class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :number
      t.string :name

      t.timestamps
    end
  end
end
