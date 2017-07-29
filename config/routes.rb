Rails.application.routes.draw do

	#contacts is the homepage where you can view your entire list of contacts

  get 'feed' => 'contacts#feed'

  get 'show_user' => 'contacts#show_user'

  get 'now_linked' => 'contacts#now_linked'

  get 'unlink' => 'contacts#unlink'

  resources :professionals
  devise_for :users

  root "professionals#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
