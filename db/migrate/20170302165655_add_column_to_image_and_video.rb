class AddColumnToImageAndVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :video_title, :string
    add_column :images, :image_title, :string
  end
end
