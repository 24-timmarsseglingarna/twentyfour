class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :period
      t.datetime :start_from
      t.datetime :start_to
      t.integer :regattum_id

      t.timestamps
    end
  end
end
