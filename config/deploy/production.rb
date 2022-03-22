#FIXME replace 1.2.3.4 with your IP address
server '13.40.113.109', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'