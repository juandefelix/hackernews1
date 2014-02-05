class Createposts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :link
      t.timestamps
    end
  end
end
