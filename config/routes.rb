Rails.application.routes.draw do
  resources :oenologists
  resources :wine_strains
  resources :strains
  resources :wines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
