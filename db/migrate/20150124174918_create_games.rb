class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :games, :users
  end
end
