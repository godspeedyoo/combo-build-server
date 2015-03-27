Rails.application.routes.draw do
  devise_for :users
  # API definition
  namespace :api, defaults: { format: :json },
                            constraints: { subdomain: 'api' },
                            path: '/' do
    # set scope for api versioning
    scope module: :v1,
            constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:show]
    end  
  end
end
