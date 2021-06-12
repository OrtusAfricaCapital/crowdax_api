
server '34.222.74.41', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'