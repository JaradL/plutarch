Rails.application.routes.draw do
  unauthenticated do
    root 'pages#home', as: nil
  end
  
  authenticated do
    root 'dashboard#index'
  end

  get 'features', to: 'pages#features'

  get 'pricing', to: 'pages#pricing'

  get 'about', to: 'pages#about'

  devise_for :user, :path => '', :path_names => { :sign_in => "signin", :sign_out => "signout", :sign_up => "signup" }, controllers: { registrations: "registrations" }

  resource :dashboard, :controller => 'dashboard'
  get 'dashboard/index'
end
