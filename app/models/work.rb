class Work < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :image, :title, :year
end
