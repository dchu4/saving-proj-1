class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :post_type
      t.string :post_source
      t.text :post_caption

      t.timestamps
    end
  end
end
