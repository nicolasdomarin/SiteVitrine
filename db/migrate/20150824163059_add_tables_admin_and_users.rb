class AddTablesAdminAndUsers < ActiveRecord::Migration
  def change
  	 create_table :users do |t|
      t.string :last_name
      t.string :first_name 
      t.string :email		
      t.string :password_digest		
      t.string :status , :default => "User"
 	end
  end
end
