class RenamePostToImage < ActiveRecord::Migration[5.0]
  def change
    rename_table :posts, :images
  end
end
