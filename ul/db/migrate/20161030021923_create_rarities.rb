class CreateRarities < ActiveRecord::Migration
  def change
    create_table :rarities do |t|
      t.string :name
      t.integer :max_level

      t.timestamps null: false
    end
  end
end
