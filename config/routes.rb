Sampleapp::Application.routes.draw do 
  


resources :attachments do
  member do
    post :vote_up
  end
end





  get "attachments/show"

  get "attachments/create"
  post "attachments/create"




resources :users
match '/attachments/:id/vote_down/', :to=>'attachments#vote_down'


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
match '/users/:id/course1', :to=>'users#course1'
match '/users/:id/course2', :to=>'users#course2'
match '/users/:id/course3', :to=>'users#course3'
match '/users/:id/course4', :to=>'users#course4'
match '/users/:id/course5', :to=>'users#course5'
match '/users/:id/course6', :to=>'users#course6'
match '/users/:id/course7', :to=>'users#course7'
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
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
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
