Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :services, only: [:index, :show, :new, :create] do
    collection do
      get "done", to: "services#done"
    end
    patch "completed", to: "services#completed"
  end

end
