class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.references :rarity, index:true, foreign_key: true
      t.references :element, index:true, foreign_key: true
      t.belongs_to :stat_element, references: :element
      t.integer :cost
      t.integer :current_reforge
      t.integer :max_reforge
      t.integer :top_stat
      t.integer :bot_stat
      t.string :skill_name
      t.text :skill_description
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
