class AddTablesTwo < ActiveRecord::Migration
  def change

  	add_column :users , :salt , :string
 	
 	create_table :categories do |t|
      t.string :label
    end 

    create_table :sales do |t|
      t.datetime :start_datetime  , :null => false
      t.datetime :end_datetime  , :null => false
      t.string :label
      t.text :description
      t.decimal :shipping_fees
    end 

    create_table :suppliers do |t|
      t.string :name
    end 

    create_table :products do |t|
      t.string :label
      t.decimal :price
      t.decimal :special_price
      t.text :description 
      t.integer :stock
      t.integer :category_id
      t.integer :sale_id
      t.integer :supplier_id

    end 
      
    create_table :orders do |t|
      t.string :order_code
      t.integer :sale_id
      t.string :status
      t.integer :buyer_address_id
      t.datetime :created_at
    end 
  	
  	create_table :order_rows do |t|
      t.integer :order_id
      t.integer  :product_id
    end 


    
  end
end


