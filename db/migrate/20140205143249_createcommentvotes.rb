class Createcommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :comment_id
      t.integer :votes
      t.timestamps
    end
  end
end
