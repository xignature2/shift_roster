class Image < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :post, optional: true
end
