class CreateAdventureStages < ActiveRecord::Migration
  def change
    create_table :adventure_stages do |t|
      t.references :adventure, index: true
      t.references :stage, index: true

      t.timestamps null: false
    end
    add_foreign_key :adventure_stages, :adventures
    add_foreign_key :adventure_stages, :stages
  end
end
