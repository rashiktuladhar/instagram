Rails.application.routes.draw do

  devise_for :users
  resources :pics do
  	member do
		put "like", to: "pics#upvote"  		
  	end
  end 		
  # root page : index page called
  root "pics#index"

end
