class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :said
      t.string :meant
      t.string :song
      t.string :artist

      t.timestamps
    end
  end
end
