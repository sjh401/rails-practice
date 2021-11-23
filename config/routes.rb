Rails.application.routes.draw do
  resources :recipes
  get '/recipes', to: 'recipes#gothere', as: :doug
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
