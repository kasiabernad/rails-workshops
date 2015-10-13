Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#about"

  resources :teachers

  resources :reports do
    get :subjects
  end

  resources :students do
    get :subjects
  end
end
