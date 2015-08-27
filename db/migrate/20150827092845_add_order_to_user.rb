class AddOrderToUser < ActiveRecord::Migration
  def change
  	 add_column :orders , :user_id , :integer , :null => false
  	 Order.find_each do |o|
      o.user_id = 1
      o.save!
    end
  end
end
