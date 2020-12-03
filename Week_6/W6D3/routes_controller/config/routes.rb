Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Simple route example
  get 'silly', to: 'silly#fun' # serves GET requests to /silly?... with SillyController#fun
  post 'silly', to: 'silly#time' # serves POST requests to /silly? with SillyController#time
  post 'silly/:id', to: 'silly#super' # automatically turns 20 into id:20, "id:" can be replaced by anything.

  resources :superheroes do
    # collection routes are normally nested (:index).
    # in this case, it's not possible to get the abilities of all superheroes without knowing the id first.
    resources :abilities, only: [:index]
  end

  # member routes are not normally nested.
  resources :abilities, only: [:show, :update, :create, :destroy]
end
