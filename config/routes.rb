Rails.application.routes.draw do
  devise_for :users
  
  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end
end
