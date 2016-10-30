class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.integer :team, :default => 0
      t.integer :affected, :default => 0
      t.text :description

      t.timestamps null: false
    end
  end
end
