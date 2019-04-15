class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.integer :hp
      t.integer :level
      t.integer :physical_damage
      t.integer :magical_damage
      t.integer :armor
      t.string :weaknesses

      t.timestamps
    end
  end
end
