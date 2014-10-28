class CreateRegatta < ActiveRecord::Migration
  def change
    create_table :regatta do |t|
      t.string :name
      t.integer :organizer_id
      t.text :description

      t.timestamps
    end
  end
end
