class Video < ApplicationRecord
  validates :video_source, presence: true
end
