require 'sidekiq/web'
Rails.application.routes.draw do
  get 'reports/index'

  get 'reports/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
end
