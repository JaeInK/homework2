Rails.application.routes.draw do
  root 'home#index'

  get 'home/new'
  #get 'home/new' => 'home#new'

  post 'home/create'
  
  get 'home/destroy/:post_id' ,to: 'home#destroy' ,as: 'post_destroy'

  get 'home/edit/:post_id' => 'home#edit'
  
  post 'home/update/:post_id' => 'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
