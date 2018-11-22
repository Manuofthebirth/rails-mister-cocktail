Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    'cocktails',                         to: 'cocktails#index'
  get    'cocktails/new',                     to: 'cocktails#new'
  get    'cocktails/:id',                     to: 'cocktails#show', as: 'cocktail_show'
  post   'cocktails',                         to: 'cocktails#create', as: 'cocktail_create'
  delete 'cocktails/:id',                     to: 'cocktails#destroy', as: 'cocktail_destroy'

  get    'cocktails/:cocktail_id/doses/new',  to: 'doses#new', as: 'dose_new'
  post   'cocktails/:cocktail_id/doses',      to: 'doses#create', as: 'dose_create'
  delete 'doses/:id',                         to: 'doses#destroy', as: 'dose_destroy'
end
