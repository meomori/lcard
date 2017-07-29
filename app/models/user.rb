class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :professional
  serialize :following, Array


  mount_uploader :avatar, AvatarUploader

  validates :email, presence: true, uniqueness: true
end
