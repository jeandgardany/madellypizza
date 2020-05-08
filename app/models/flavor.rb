class Flavor < ApplicationRecord
 mount_uploaders :iflavors, IflavorsUploader
 
 validates :name, uniqueness: true

end
