class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :colors do |t|
      t.integer :user_id
      t.integer :color_id
    end
  end
end
