class Post < ApplicationRecord

  mount_uploader :picture, ProfilePhotoUploader

  validates :body, presence: true

end
