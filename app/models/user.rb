class User < ActiveRecord::Base
  has_secure_password
    validates :username, uniqueness: true

   def editor? 
    self.role == 'editor' 
   end

   def admin?
    self.role == 'admin'
   end

end
