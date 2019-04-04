Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    # Get login token from Knock
    post   'user_token'      => 'user_token#create'
    resources :scratchers
end
