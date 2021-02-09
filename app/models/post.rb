class Post < ApplicationRecord

  mount_uploader :picture, PostPictureUploader
  mount_uploader :video, VideoUploader

  validates :body, presence: true

end
