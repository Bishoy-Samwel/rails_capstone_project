class CreateFollowings < ActiveRecord::Migration[6.1]
  def change
    create_table :followings do |t|
      t.integer :follower_id, null: false, foreign_key: true
      t.integer :followed_id, null: false, foreign_key: true
      t.timestamps
    end
    add_foreign_key :followings, :users, column: :follower_id
    add_foreign_key :followings, :users, column: :followed_id
  end
end
