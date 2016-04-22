Rails.application.routes.draw do

  resources :pics

  # root page : index page called
  root "pics#index"

end
