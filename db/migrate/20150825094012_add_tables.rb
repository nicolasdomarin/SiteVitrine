class AddTables < ActiveRecord::Migration
  def change
	change_column :users, :first_name, :string	, :null => false
	change_column :users, :last_name, :string, :null => false
	change_column :users, :email,  :string , :null => false
	change_column :users, :password_digest,  :string , :null => false, :null => false
    add_column :users , :username , :string , :null => false
	add_column :users , :created_at , :datetime , :default => Time.now
	add_column :users , :newsletter , :integer, :default => 1
  end
end
