class Image < ApplicationRecord
  mount_uploader :image_source, ImageUploader

  validates :image_source, presence: true
end
