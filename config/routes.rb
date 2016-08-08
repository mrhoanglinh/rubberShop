Rails.application.routes.draw do
	
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'signup/index'

  #get 'login/index'  
  
  get 'new/index'

  get 'home/index' => 'login#index'
  get 'home/index' => 'signup#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   match ':controller(/:action(/:id))', :via => [:get, :post]
end
