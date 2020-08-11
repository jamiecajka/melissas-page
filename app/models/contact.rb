class Contact < ApplicationRecord

  mount_uploader :picture, ProfilePhotoUploader

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true

end
