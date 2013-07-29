class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :lure_id
      t.integer :user_id

      t.timestamps
    end
    add_index :reviews, [:lure_id]
  end
end
