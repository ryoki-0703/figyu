Rails.application.routes.draw do
  root "homes#top"

  get "figures/new"
  post "figures" => "figures#create"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
