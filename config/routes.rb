GurupiOrg::Application.routes.draw do
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout"                 => "sessions#destroy", :as => :signout
  resources :posts, only: :show
  root :to => "welcome#index"
end
