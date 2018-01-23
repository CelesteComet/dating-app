Rails.application.routes.draw do
  namespace :api do 
    namespace :profiles do 
      get '/next', to: 'profiles#next'
    end
  end
end
 