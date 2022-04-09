Rails.application.routes.draw do
  root to: 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects, only: %i[index show] do
    resources :users, only: %i[index]
  end
end
