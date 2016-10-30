class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :name
      t.integer :stat_top, :default => 0
      t.integer :stat_bot, :default => 2

      t.timestamps null: false
    end
  end
end
