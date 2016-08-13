Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :freelancer


  namespace :themes do
    resources :agency
  end
end
