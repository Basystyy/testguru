Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tests#index'
  resources :tests do
    resources :questions, shallow: true do
      post 'delete', on: :member
    end
  end
end
