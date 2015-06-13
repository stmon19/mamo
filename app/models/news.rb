class News < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  validates_presence_of :title, :location
end
