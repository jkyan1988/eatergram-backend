class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :post
      t.integer :likes
      t.string :description
      t.string :user

      t.timestamps
    end
  end
end
