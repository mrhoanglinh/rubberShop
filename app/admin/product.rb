ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :catalog_id, :productName, :price, :content, :viewNum

  index do
    selectable_column
    id_column
    column :catalog_id
    column :productName
    column :price
    column :content
    column :viewNum
    actions
  end

  filter :name
  filter :price

  form do |f|
    f.inputs "Product Details" do
      	f.input "catalog_id"
    	f.input "productName"
    	f.input "price"
    	f.input "content"
    	f.input "viewNum"     	
    end
    f.actions
  end

end
