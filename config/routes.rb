Rails.application.routes.draw do
  namespace :api do
    resources :lists, defaults: {format: :json}
  end
end
