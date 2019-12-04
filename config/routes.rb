Rails.application.routes.draw do

  Cms::Factory.routes(self)

  # namespace :cms, path: :admin do
  #   get '/posts', to: 'posts#index'
  # end

  root to: 'dashboard#show'
end
