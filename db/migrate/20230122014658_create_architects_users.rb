class CreateArchitectsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :architects_users, :id => false do |t|
      t.integer :architect_id
      t.integer :user_id
    end
  end
end
