class Filling < ApplicationRecord
  mount_uploaders :ifillings, IfillingsUploader

  validates :name, uniqueness: true
  
end
