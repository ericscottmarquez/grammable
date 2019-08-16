class Gram < ApplicationRecord
  validates :message, presence: true
  belongs_to :user
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader



end
