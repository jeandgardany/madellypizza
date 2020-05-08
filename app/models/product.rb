class Product < ApplicationRecord
  belongs_to :category
  enum status: [:ativo, :inativo]
  mount_uploaders :photos, PhotosUploader
  mount_uploader :image, ImageUploader
  #has_many_attached :photos
  has_many :fillings
  has_many :flavors
  
  attr_accessor :remove_photos
  after_save do
    Array(remove_photos).each { |id| photos.find_by_id(id).try(:purge) }
  end
  validates :code, :name, :price, :status, presence: true
  validates :code, uniqueness: true

end
