class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo_url
      t.integer :mood_id
      t.integer :post_id

      t.timestamps
    end
  end
end
