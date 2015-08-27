class User < ActiveRecord::Base
  has_many :orders
  has_secure_password
    validates :username, uniqueness: true

   def editor? 
    self.role == 'editor' 
   end

   def admin?
    self.role == 'admin'
   end

end
