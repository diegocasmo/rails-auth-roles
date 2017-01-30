Rails.application.routes.draw do
  # Devise routes
  devise_for :users, skip: :registrations
  devise_scope :user do
    resource :registration,
      only: [:new, :create, :edit, :update],
      path: 'users',
      path_names: { new: 'sign_up' },
      controller: 'devise/registrations',
      as: :user_registration do
        get :cancel
      end
  end

  # Picture routes
  get '/pictures/new', to: 'pictures#new'
  post '/pictures/new', to: 'pictures#create'

  root to: 'home#get'
end

