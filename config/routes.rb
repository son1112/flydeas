Rails.application.routes.draw do
    resources :account_activations, only: [:edit] do
    end
    get 'password_resets/new'

    get 'password_resets/edit'

    get 'password_resets/new'

    get 'password_resets/edit'

    get 'password_resets/new'

    get 'password_resets/edit'

    get 'password_resets/new'

    get 'password_resets/edit'

    resources :logins, only: %i(new create) do
    end
    
    resources :password_resets, only: [:new, :create, :edit, :update]
end
