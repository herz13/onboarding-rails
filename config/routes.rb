Rails.application.routes.draw do
  resources :controllers
  resources :universities

  get '/', to: => redirect('/index.html')
end
