require 'api_ver_checker'

Rails.application.routes.draw do
  root  'sessions#new'

  delete 'logout' => 'sessions#destroy'

  resources :users,
            :property_types,
            :properties,
            :search,
            :properties_pdf,
            :users_pdf,
            :sessions

  get 'interest_mail/:property_id' => 'search#mail', as: :interest_mail

  # For versioning
  namespace :api , defaults: {format: 'json'} do
    scope module: :vermay2015, constraints: APIVerChecker.new(version: 'vermay2015', default: true) do
    end
  end
end
