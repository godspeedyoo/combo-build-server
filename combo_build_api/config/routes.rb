Rails.application.routes.draw do
  # API definition
  namespace :api, defaults: { format: :json },
                            constraints: { subdomain: 'api' },
                            path: '/' do
    # set scope for api versioning
    scope module: :v1 do

    end  
  end
end
