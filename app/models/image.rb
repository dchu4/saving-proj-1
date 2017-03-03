class Image < ApplicationRecord
  mount_uploader :image_source, ImageUploader
end
