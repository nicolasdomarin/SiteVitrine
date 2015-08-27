class AddNewsletter < ActiveRecord::Migration
  def change
   create_table "newsletters", force: true do |t|
    t.string   "last_name"  
    t.string   "first_name"                                      
    t.string   "email"                                           
  	end  
  end
end
