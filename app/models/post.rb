class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :title, presence: true
  validates :content, presence: true
end
