Rails.application.routes.draw do
  root 'pages#home'

  get 'features', to: 'pages#features'

  get 'pricing', to: 'pages#pricing'

  get 'about', to: 'pages#about'

  devise_for :user, :path => '', :path_names => { :sign_in => "signin", :sign_out => "signout", :sign_up => "signup" }, controllers: { registrations: "registrations" }
end
