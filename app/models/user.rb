class User < ApplicationRecord
  has_attached_file :avatar, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  mount_uploader :avatar, AvatarUploader
  validates :name, presence: true
  validates :surname, presence: true
  validates :date, presence: true

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end