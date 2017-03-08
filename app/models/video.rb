class Video < ApplicationRecord
  validates :video_title, :video_source, presence: true
end
