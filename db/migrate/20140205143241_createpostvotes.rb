class Createpostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.integer :post_id
      t.integer :votes
      t.timestamps
    end
  end
end
