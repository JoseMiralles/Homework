# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#              new_sessions GET    /sessions/new(.:format)                                                                  sessions#new
#                  sessions DELETE /sessions(.:format)                                                                      sessions#destroy
#                           POST   /sessions(.:format)                                                                      sessions#create
#                     bands GET    /bands(.:format)                                                                         bands#index
#                           POST   /bands(.:format)                                                                         bands#create
#                  new_band GET    /bands/new(.:format)                                                                     bands#new
#                 edit_band GET    /bands/:id/edit(.:format)                                                                bands#edit
#                      band GET    /bands/:id(.:format)                                                                     bands#show
#                           PATCH  /bands/:id(.:format)                                                                     bands#update
#                           PUT    /bands/:id(.:format)                                                                     bands#update
#                           DELETE /bands/:id(.:format)                                                                     bands#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

#              new_sessions GET    /sessions/new(.:format)                                                                  sessions#new
#                  sessions DELETE /sessions(.:format)                                                                      sessions#destroy
#                           POST   /sessions(.:format)                                                                      sessions#create

#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :new, :create, :destroy]
  resource :sessions, only: [:new, :create, :destroy]
  resources :bands

end
