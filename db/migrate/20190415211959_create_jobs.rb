class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :bio
      t.string :weaknesses

      t.timestamps
    end
  end
end
