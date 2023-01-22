class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.text :name
      t.text :year
      t.text :style
      t.text :place
      t.text :image

      t.timestamps
    end
  end
end
