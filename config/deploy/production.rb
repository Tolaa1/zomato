#FIXME replace 1.2.3.4 with your IP address
server '18.132.247.209', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'