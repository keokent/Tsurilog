class CreateLures < ActiveRecord::Migration
  def change
    create_table :lures do |t|
      t.string :name
      t.string :photo_url
      t.integer :lure_type

      t.timestamps
    end
  end
end
