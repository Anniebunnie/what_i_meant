class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :said
      t.string :meant
      t.integer :song_id
      t.integer :user_id
      t.integer :mood_id

      t.timestamps
    end
  end

  def down
  	drop_table :posts
  end
end
