# Single-machine vagrant-based deployment
# You'll need to bring up the hack box, then do
# (vagrant ssh-config db; vagrant ssh-config web; vagrant ssh-config worker) >>~/.ssh/config
# to make sure capistrano can SSH directly into the running boxes

set :deploy_to, "/var/www/testapp3_production"
set :rails_env, "production"

server "hack", :web, :db, :app, :primary => true
