Rails.application.routes.draw do
  resources :list_entries, only: 'create'
end
