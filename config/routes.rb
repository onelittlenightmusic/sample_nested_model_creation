Rails.application.routes.draw do
  resources :descendants
  resources :children
  resources :parents do
    resources :children
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
