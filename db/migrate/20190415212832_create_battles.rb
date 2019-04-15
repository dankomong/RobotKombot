class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.string :name
      t.string :victory
      t.references :boss, foreign_key: true
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
