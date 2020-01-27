Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :institutions
  end

  resources :home do
    collection do
      get 'get_institutions'
    end
  end

  root "home#index"

end
