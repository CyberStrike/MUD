class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.text :description
      t.text :brief
      t.integer :north_id
      t.integer :south_id
      t.integer :east_id
      t.integer :west_id

      t.timestamps null: false
    end
  end
end
