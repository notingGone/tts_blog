class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader

  after_initialize :init

  def init
    self.avatar ||= "default-avatar.jpg"
  end

  has_many :posts
  has_many :comments
end
