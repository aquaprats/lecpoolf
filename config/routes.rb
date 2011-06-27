Sampleapp::Application.routes.draw do 


 

  resources :conversations do
    resources :comments
  end

  resources :forums do
    resources :conversations
  end
  

  resources :users
  

match'/videos',:to=>'videos#index'
  
match '/videos/create',:to=>'videos#create'
match '/videos/:id/vote_up/', :to=>'videos#vote_up'
match '/videos/:id/vote_down/', :to=>'videos#vote_down'

  get "attachments/show"

  
 post "attachments/create"

match '/attachments/:id/vote_up1/', :to=>'attachments#vote_up1'
match '/attachments/:id/vote_down1/', :to=>'attachments#vote_down1'
match '/attachments/:id/vote_up2/', :to=>'attachments#vote_up2'
match '/attachments/:id/vote_down2/', :to=>'attachments#vote_down2'
match '/attachments/:id/vote_up3/', :to=>'attachments#vote_up3'
match '/attachments/:id/vote_down3/', :to=>'attachments#vote_down3'
match '/attachments/:id/vote_up4/', :to=>'attachments#vote_up4'
match '/attachments/:id/vote_down4/', :to=>'attachments#vote_down4'
match '/attachments/:id/vote_up5/', :to=>'attachments#vote_up5'
match '/attachments/:id/vote_down5/', :to=>'attachments#vote_down5'
match '/attachments/:id/vote_up6/', :to=>'attachments#vote_up6'
match '/attachments/:id/vote_down6/', :to=>'attachments#vote_down6'
match '/attachments/:id/vote_up7/', :to=>'attachments#vote_up7'
match '/attachments/:id/vote_down7/', :to=>'attachments#vote_down7'

match '/attachments/:id/vote_down/', :to=>'attachments#vote_down'

match '/attachments/create/',:to=>'attachments#create'
match '/attachments/:id/vote_up/', :to=>'attachments#vote_up'
match '/attachments/index',:to=>'attachments#index'
match '/attachments/index2',:to=>'attachments#index2'

match '/attachments/index3',:to=>'attachments#index3'
match '/attachments/index4',:to=>'attachments#index4'
match '/attachments/index5',:to=>'attachments#index5'
match '/attachments/index6',:to=>'attachments#index6'
match '/attachments/index7',:to=>'attachments#index7'
match '/attachments/index8',:to=>'attachments#index8'





resources :sessions, :only => [:new, :create, :destroy]
match 'attachments/:id/file',:to=>'attachments#me'
match 'attachments/:id/file/view1',:to=>'attachments#me1'
match 'attachments/:id/file/view',:to=>'attachments#view'
match '/users/:id/course1', :to=>'users#course1'
match '/users/:id/course2', :to=>'users#course2'
match '/users/:id/course3', :to=>'users#course3'
match '/users/:id/course4', :to=>'users#course4'
match '/users/:id/course5', :to=>'users#course5'
match '/users/:id/course6', :to=>'users#course6'
match '/users/:id/course7', :to=>'users#course7'
match '/users/:id/delete' , :to=>'users#delete'
    
  match '/developers', :to=>'pages#developers'

  match '/contact', :to=>'pages#contact'
match '/about', :to=>'pages#about'
match '/help', :to=>'pages#help'
match'/signup',:to=>'users#new'
match'/users/:id/activate' , :to=>'users#activate'

match '/signin', :to => 'sessions#new'
match '/signout', :to => 'sessions#destroy'
root :to=>'pages#home'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
