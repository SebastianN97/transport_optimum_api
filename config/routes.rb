Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip:
  [:omniauth_callback]
  namespace :api do
    namespace :v1 do
      resources :request, only: [:index]
    end
  end
end
