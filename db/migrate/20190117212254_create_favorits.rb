class CreateFavorits < ActiveRecord::Migration[5.2]
  def change
    create_table :favorits do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
