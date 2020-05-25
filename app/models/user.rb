class User < ApplicationRecord
  # devise :database_authenticatable, :registerable,:confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments
  validates :password, presence: true, length: { minimum: 8 }

end
