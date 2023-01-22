class CreateBuildingsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings_users, :id => false do |t|
      t.integer :building_id
      t.integer :user_id
    end
  end
end
