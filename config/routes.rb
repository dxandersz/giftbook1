
Rails.application.routes.draw do
    # Landing page, this will display all the boxes you can choose from.
    root 'api/v1/giftboxes#index'

    post "/login" => "sessions#create"
    delete "/logout" => "sessions#destroy"
    get "/profile" => "users#profile"
    resources :users
    resources :books
    resources :giftboxes
end
