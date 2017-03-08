class Image < ApplicationRecord
  mount_uploader :image_source, ImageUploader

  validates :image_title, :image_source, presence: true
end
