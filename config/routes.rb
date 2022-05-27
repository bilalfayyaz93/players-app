Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players, only: %i(index show update destroy create)
    end
  end
end
