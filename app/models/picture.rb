class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user

  validates :description, presence: true
  validates :image, presence: true
end
