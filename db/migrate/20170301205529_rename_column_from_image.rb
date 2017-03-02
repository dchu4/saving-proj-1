class RenameColumnFromImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :post_source, :image_source
    rename_column :images, :post_caption, :image_caption
    remove_column :images, :post_type, :string
  end
end
