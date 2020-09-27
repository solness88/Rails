Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :contacts
  get'/kobatters/home' ,to:'kobatters#home'
  resources :kobatters do
    collection do
      post :confirm
    end
  end
end
