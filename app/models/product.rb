class Product < ActiveRecord::Base
  belongs_to :category 
  belongs_to :sale
  has_many :order_items
  
  has_attached_file :image,:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
