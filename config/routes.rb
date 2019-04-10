Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/school_classes/new', to: 'school_classes#new'
  post '/school_classes', to: 'school_classes#create'
  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'
  get '/school_classes/:id/edit', to: 'school_classes#edit'
  patch '/school_classes', to: 'school_classes#update'

  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit'
  patch '/students', to: 'students#update'
end
