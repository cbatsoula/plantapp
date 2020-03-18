class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :plant_name
      t.string :plant_nickname
      t.string :acquired
      t.boolean :indoor
      t.boolean :outdoor
      t.string :repot
      t.belongs_to :owner, foreign_key: true

      t.timestamps
    end
  end
end
