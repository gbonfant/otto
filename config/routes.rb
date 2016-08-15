Rails.application.routes.draw do
  root 'welcome#index'

  resources :list_entries, only: 'create'
end
