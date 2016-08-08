class CreateProducts < ActiveRecord::Migration[5.0]

  def up
    create_table :products do |t|
    	t.integer "catalog_id"
    	t.string "productName", :null => false
    	t.float "price"
    	t.string "content", :null => false
    	t.integer "viewNum"
      	t.timestamps
    end
  end

  def down
  	 drop_table :products
  end

end
