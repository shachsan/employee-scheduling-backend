
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :departments, :schedules, :associates, :shifts, :dept_shifts, :users, :calendar_events
        post '/login', to: 'auth#create'
        get '/current_user', to: 'auth#show'
    end
  end
end
