# frozen_string_literal: true

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'hola' => 'hola#index'
      get 'status' => 'status#index'
    end
  end
end
