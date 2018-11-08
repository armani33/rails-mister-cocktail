Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  root 'cocktails#index'

end
