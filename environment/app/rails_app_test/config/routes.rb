Rails.application.routes.draw do
  root 'static#landing'
  resources :people
end
