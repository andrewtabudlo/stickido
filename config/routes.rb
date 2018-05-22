Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/project'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ask if we are using devise
	resources :projects do
		resources :tasks
	end
	resources :stickis
	resources :tags
	root to: "home#index"
	# root route
	# root GET    /    home#index
	# resources :tasks
end

# Prefix Verb   URI Pattern                                    Controller#Action
# pages_index GET    /pages/index(.:format)                         pages#index
# pages_project GET    /pages/project(.:format)                       pages#project
# new_user_session GET    /users/sign_in(.:format)                       devise/sessions#new
# user_session POST   /users/sign_in(.:format)                       devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)                      devise/sessions#destroy
# new_user_password GET    /users/password/new(.:format)                  devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format)                 devise/passwords#edit
# user_password PATCH  /users/password(.:format)                      devise/passwords#update
# 			PUT    /users/password(.:format)                      devise/passwords#update
# 			POST   /users/password(.:format)                      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                        devise/registrations#cancel
# new_user_registration GET    /users/sign_up(.:format)                       devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)                          devise/registrations#edit
# user_registration PATCH  /users(.:format)                               devise/registrations#update
# 			PUT    /users(.:format)                               devise/registrations#update
# 			DELETE /users(.:format)                               devise/registrations#destroy
# 			POST   /users(.:format)                               devise/registrations#create
# project_tasks GET    /projects/:project_id/tasks(.:format)          tasks#index
# 			POST   /projects/:project_id/tasks(.:format)          tasks#create
# new_project_task GET    /projects/:project_id/tasks/new(.:format)      tasks#new
# edit_project_task GET    /projects/:project_id/tasks/:id/edit(.:format) tasks#edit
# project_task GET    /projects/:project_id/tasks/:id(.:format)      tasks#show
# 			PATCH  /projects/:project_id/tasks/:id(.:format)      tasks#update
# 			PUT    /projects/:project_id/tasks/:id(.:format)      tasks#update
# 			DELETE /projects/:project_id/tasks/:id(.:format)      tasks#destroy
#    projects GET    /projects(.:format)                            projects#index
# 			POST   /projects(.:format)                            projects#create
# new_project GET    /projects/new(.:format)                        projects#new
# edit_project GET    /projects/:id/edit(.:format)                   projects#edit
# 	project GET    /projects/:id(.:format)                        projects#show
# 			PATCH  /projects/:id(.:format)                        projects#update
# 			PUT    /projects/:id(.:format)                        projects#update
# 			DELETE /projects/:id(.:format)                        projects#destroy
# 	stickis GET    /stickis(.:format)                             stickis#index
# 			POST   /stickis(.:format)                             stickis#create
#  new_sticki GET    /stickis/new(.:format)                         stickis#new
# edit_sticki GET    /stickis/:id/edit(.:format)                    stickis#edit
# 	 sticki GET    /stickis/:id(.:format)                         stickis#show
# 			PATCH  /stickis/:id(.:format)                         stickis#update
# 			PUT    /stickis/:id(.:format)                         stickis#update
# 			DELETE /stickis/:id(.:format)                         stickis#destroy
# 	   tags GET    /tags(.:format)                                tags#index
# 			POST   /tags(.:format)                                tags#create
# 	new_tag GET    /tags/new(.:format)                            tags#new
#    edit_tag GET    /tags/:id/edit(.:format)                       tags#edit
# 		tag GET    /tags/:id(.:format)                            tags#show
# 			PATCH  /tags/:id(.:format)                            tags#update
# 			PUT    /tags/:id(.:format)                            tags#update
# 			DELETE /tags/:id(.:format)                            tags#destroy
# 	   root GET    /    