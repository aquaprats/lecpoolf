Sampleapp::Application.routes.draw do 


  
  resources :users

  resources :conversations do
    resources :comments
  end

  resources :forums do
    resources :conversations
  end
  

  
 
match'/videos',:to=>'videos#index'
  
match '/videos/create',:to=>'videos#create'
match '/videos/:id/vote_up/', :to=>'videos#vote_up'
match '/videos/:id/vote_down/', :to=>'videos#vote_down'

  get "attachments/show"

  
 post "attachments/create"


match '/attachments/:id/vote_up1/', :to=>'attachments#vote_up1'
match '/attachments/:id/vote_down1/', :to=>'attachments#vote_down1'
match '/attachments/:id/vote_up1a/', :to=>'attachments#vote_up1a'
match '/attachments/:id/vote_down1a/', :to=>'attachments#vote_down1a'
match '/attachments/:id/vote_up1q/', :to=>'attachments#vote_up1q'
match '/attachments/:id/vote_down1q/', :to=>'attachments#vote_down1q'
match '/attachments/:id/vote_up1e/', :to=>'attachments#vote_up1e'
match '/attachments/:id/vote_down1e/', :to=>'attachments#vote_down1e'
match '/videos/:id/vote_up1v/', :to=>'videos#vote_up1v'
match '/videos/:id/vote_down1v/', :to=>'videos#vote_down1v'
match '/attachments/:id/vote_up1l/', :to=>'attachments#vote_up1l'
match '/attachments/:id/vote_down1l/', :to=>'attachments#vote_down1l'

match '/attachments/:id/vote_up2/', :to=>'attachments#vote_up2'
match '/attachments/:id/vote_down2/', :to=>'attachments#vote_down2'
match '/attachments/:id/vote_up2a/', :to=>'attachments#vote_up2a'
match '/attachments/:id/vote_down2a/', :to=>'attachments#vote_down2a'
match '/attachments/:id/vote_up2q/', :to=>'attachments#vote_up2q'
match '/attachments/:id/vote_down2q/', :to=>'attachments#vote_down2q'
match '/attachments/:id/vote_up2e/', :to=>'attachments#vote_up2e'
match '/attachments/:id/vote_down2e/', :to=>'attachments#vote_down2e'
match '/videos/:id/vote_up2v/', :to=>'videos#vote_up2v'
match '/videos/:id/vote_down2v/', :to=>'videos#vote_down2v'
match '/attachments/:id/vote_up2l/', :to=>'attachments#vote_up2l'
match '/attachments/:id/vote_down2l/', :to=>'attachments#vote_down2l'

match '/attachments/:id/vote_up3/', :to=>'attachments#vote_up3'
match '/attachments/:id/vote_down3/', :to=>'attachments#vote_down3'
match '/attachments/:id/vote_up3a/', :to=>'attachments#vote_up3a'
match '/attachments/:id/vote_down3a/', :to=>'attachments#vote_down3a'
match '/attachments/:id/vote_up3q/', :to=>'attachments#vote_up3q'
match '/attachments/:id/vote_down3q/', :to=>'attachments#vote_down3q'
match '/attachments/:id/vote_up3e/', :to=>'attachments#vote_up3e'
match '/attachments/:id/vote_down3e/', :to=>'attachments#vote_down3e'
match '/videos/:id/vote_up3v/', :to=>'videos#vote_up3v'
match '/videos/:id/vote_down3v/', :to=>'videos#vote_down3v'
match '/attachments/:id/vote_up3l/', :to=>'attachments#vote_up3l'
match '/attachments/:id/vote_down3l/', :to=>'attachments#vote_down3l'

match '/attachments/:id/vote_up4/', :to=>'attachments#vote_up4'
match '/attachments/:id/vote_down4/', :to=>'attachments#vote_down4'
match '/attachments/:id/vote_up4a/', :to=>'attachments#vote_up4a'
match '/attachments/:id/vote_down4a/', :to=>'attachments#vote_down4a'
match '/attachments/:id/vote_up4q/', :to=>'attachments#vote_up4q'
match '/attachments/:id/vote_down4q/', :to=>'attachments#vote_down4q'
match '/attachments/:id/vote_up4e/', :to=>'attachments#vote_up4e'
match '/attachments/:id/vote_down4e/', :to=>'attachments#vote_down4e'
match '/videos/:id/vote_up4v/', :to=>'videos#vote_up4v'
match '/videos/:id/vote_down4v/', :to=>'videos#vote_down4v'
match '/attachments/:id/vote_up4l/', :to=>'attachments#vote_up4l'
match '/attachments/:id/vote_down4l/', :to=>'attachments#vote_down4l'

match '/attachments/:id/vote_up5/', :to=>'attachments#vote_up5'
match '/attachments/:id/vote_down5/', :to=>'attachments#vote_down5'
match '/attachments/:id/vote_up5a/', :to=>'attachments#vote_up5a'
match '/attachments/:id/vote_down5a/', :to=>'attachments#vote_down5a'
match '/attachments/:id/vote_up5q/', :to=>'attachments#vote_up5q'
match '/attachments/:id/vote_down5q/', :to=>'attachments#vote_down5q'
match '/attachments/:id/vote_up5e/', :to=>'attachments#vote_up5e'
match '/attachments/:id/vote_down5e/', :to=>'attachments#vote_down5e'
match '/videos/:id/vote_up5v/', :to=>'videos#vote_up5v'
match '/videos/:id/vote_down5v/', :to=>'videos#vote_down5v'
match '/attachments/:id/vote_up5l/', :to=>'attachments#vote_up5l'
match '/attachments/:id/vote_down5l/', :to=>'attachments#vote_down5l'

match '/attachments/:id/vote_up6/', :to=>'attachments#vote_up6'
match '/attachments/:id/vote_down6/', :to=>'attachments#vote_down6'
match '/attachments/:id/vote_up6a/', :to=>'attachments#vote_up6a'
match '/attachments/:id/vote_down6a/', :to=>'attachments#vote_down6a'
match '/attachments/:id/vote_up6q/', :to=>'attachments#vote_up6q'
match '/attachments/:id/vote_down6q/', :to=>'attachments#vote_down6q'
match '/attachments/:id/vote_up6e/', :to=>'attachments#vote_up6e'
match '/attachments/:id/vote_down6e/', :to=>'attachments#vote_down6e'
match '/videos/:id/vote_up6v/', :to=>'videos#vote_up6v'
match '/videos/:id/vote_down6v/', :to=>'videos#vote_down6v'
match '/attachments/:id/vote_up6l/', :to=>'attachments#vote_up6l'
match '/attachments/:id/vote_down6l/', :to=>'attachments#vote_down6l'

match '/attachments/:id/vote_up7/', :to=>'attachments#vote_up7'
match '/attachments/:id/vote_down7/', :to=>'attachments#vote_down7'
match '/attachments/:id/vote_up7a/', :to=>'attachments#vote_up7a'
match '/attachments/:id/vote_down7a/', :to=>'attachments#vote_down7a'
match '/attachments/:id/vote_up7q/', :to=>'attachments#vote_up7q'
match '/attachments/:id/vote_down7q/', :to=>'attachments#vote_down7q'
match '/attachments/:id/vote_up7e/', :to=>'attachments#vote_up7e'
match '/attachments/:id/vote_down7e/', :to=>'attachments#vote_down7e'
match '/videos/:id/vote_up7v/', :to=>'videos#vote_up7v'
match '/videos/:id/vote_down7v/', :to=>'videos#vote_down7v'
match '/attachments/:id/vote_up7l/', :to=>'attachments#vote_up7l'
match '/attachments/:id/vote_down7l/', :to=>'attachments#vote_down7l'


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

match '/videos/search2',:to=>'videos#search2'



resources :sessions, :only => [:new, :create, :destroy]
match 'attachments/:id/file',:to=>'attachments#me'
match 'attachments/:id/file/view1',:to=>'attachments#me1'
match 'attachments/:id/file/view',:to=>'attachments#view'
match '/users/:id/course1', :to=>'users#course1'
match '/users/:id/course1l', :to=>'users#course1l'
match '/users/:id/course1q', :to=>'users#course1q'
match '/users/:id/course1a', :to=>'users#course1a'
match '/users/:id/course1v', :to=>'users#course1v'
match '/users/:id/course1e', :to=>'users#course1e'
match '/users/:id/course2', :to=>'users#course2'
match '/users/:id/course2l', :to=>'users#course2l'
match '/users/:id/course2q', :to=>'users#course2q'
match '/users/:id/course2a', :to=>'users#course2a'
match '/users/:id/course2v', :to=>'users#course2v'
match '/users/:id/course2e', :to=>'users#course2e'
match '/users/:id/course3', :to=>'users#course3'
match '/users/:id/course3l', :to=>'users#course3l'
match '/users/:id/course3q', :to=>'users#course3q'
match '/users/:id/course3a', :to=>'users#course3a'
match '/users/:id/course3v', :to=>'users#course3v'
match '/users/:id/course3e', :to=>'users#course3e'
match '/users/:id/course4', :to=>'users#course4'
match '/users/:id/course4l', :to=>'users#course4l'
match '/users/:id/course4q', :to=>'users#course4q'
match '/users/:id/course4a', :to=>'users#course4a'
match '/users/:id/course4v', :to=>'users#course4v'
match '/users/:id/course4e', :to=>'users#course4e'
match '/users/:id/course5', :to=>'users#course5'
match '/users/:id/course5l', :to=>'users#course5l'
match '/users/:id/course5q', :to=>'users#course5q'
match '/users/:id/course5a', :to=>'users#course5a'
match '/users/:id/course5v', :to=>'users#course5v'
match '/users/:id/course5e', :to=>'users#course5e'
match '/users/:id/course6', :to=>'users#course6'
match '/users/:id/course6l', :to=>'users#course6l'
match '/users/:id/course6q', :to=>'users#course6q'
match '/users/:id/course6a', :to=>'users#course6a'
match '/users/:id/course6v', :to=>'users#course6v'
match '/users/:id/course6e', :to=>'users#course6e'
match '/users/:id/course7', :to=>'users#course7'
match '/users/:id/course7l', :to=>'users#course7l'
match '/users/:id/course7q', :to=>'users#course7q'
match '/users/:id/course7a', :to=>'users#course7a'
match '/users/:id/course7v', :to=>'users#course7v'
match '/users/:id/course7e', :to=>'users#course7e'

    
  match '/developers', :to=>'pages#developers'

  match '/contact', :to=>'pages#contact'
match '/about', :to=>'pages#about'
match '/help', :to=>'pages#help'
match'/signup',:to=>'users#new'
match'/users/:id/activate' , :to=>'users#activate'
match'/users/:id/deleteu',:to=>'users#deleteu'

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
