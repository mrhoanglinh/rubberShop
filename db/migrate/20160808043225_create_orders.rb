class CreateOrders < ActiveRecord::Migration[5.0]

  def up
    create_table :orders do |t|
    	t.integer "product_id"
    	t.integer "quantity"
    	t.float "amount"
      	t.timestamps
    end
  end

  def down
  	drop_table :orders
  end
end
