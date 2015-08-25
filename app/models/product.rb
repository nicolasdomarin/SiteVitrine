class Product < ActiveRecord::Base
#attr_accessible :image
  has_attached_file :image,:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
