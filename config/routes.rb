Rails.application.routes.draw do
    # Get login token from Knock
    post   'user_token'      => 'user_token#create'
    resources :scratchers
end
