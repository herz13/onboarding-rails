Rails.application.routes.draw do
  resources :controllers
  resources :universities, :locations, :courses, :teachers, :students
end
