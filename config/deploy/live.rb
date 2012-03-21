# Multi-machine vagrant-based deployment
# You'll need to bring up the vagrant boxes, then do
# (vagrant ssh-config db; vagrant ssh-config web; vagrant ssh-config worker) >>~/.ssh/config
# to make sure capistrano can SSH directly into the running boxes

set :deploy_to, "/var/www/testapp3_production"
set :rails_env, "production"

role :web, "web"
role :db,  "db", :primary => true
role :app, "worker"

