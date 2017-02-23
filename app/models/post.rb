class Post < ApplicationRecord
  mount_uploader :post_source, PostUploader
end
