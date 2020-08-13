class Post < ApplicationRecord

  mount_uploader :picture, PostPictureUploader

  validates :body, presence: true

end
