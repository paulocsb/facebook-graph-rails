Rails.application.routes.draw do

  root to: 'api#index'
  get 'api/search', to: "api#search"

end
