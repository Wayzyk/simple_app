class User < ApplicationRecord
  attr_accessor :avatar

  mount_uploader :avatar, AvatarUploader
  validates :name, presence: true
  validates :surname, presence: true
  validates :date, presence: true

end