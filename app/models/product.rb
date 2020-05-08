class Product < ApplicationRecord
  belongs_to :category
  enum status: [:active, :inactive]
  mount_uploaders :photos, PhotosUploader
  mount_uploader :image, ImageUploader
  #has_many_attached :photos
  
  attr_accessor :remove_photos
  after_save do
    Array(remove_photos).each { |id| photos.find_by_id(id).try(:purge) }
  end
  validates :code, :name, :price, :status, :image, presence: true
  validates :code, uniqueness: true

end
