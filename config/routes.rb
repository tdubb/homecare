Homecare::Application.routes.draw do

  root to: "hcs#index"
  resources :hcs

end
