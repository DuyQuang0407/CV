Rails.application.routes.draw do
  root 'linked#show'
  # root 'home#index'
  get '/:username', action: :index, controller: :home, as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
