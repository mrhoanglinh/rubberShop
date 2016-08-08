class CreateAdmins < ActiveRecord::Migration[5.0]

  def up
    create_table :admins do |t|
    	t.string "username"
    	t.string "password"
    	t.string "name"
      	t.timestamps
    end
  end

  def down
  	drop_table :admins
  end

end
