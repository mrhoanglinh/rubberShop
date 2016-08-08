class CreateCatalogs < ActiveRecord::Migration[5.0]

  def up
    create_table :catalogs do |t|
    	t.string "name", :null => false
      	t.timestamps
    end
  end

  def down
  	drop_table :catalogs
  end

end
