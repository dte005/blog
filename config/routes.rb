Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'posts#index'

  resources :posts do
    resources :ratings, only: %i[index create] do
      resources :answers, only: %i[index create new]
    end
  end
end
