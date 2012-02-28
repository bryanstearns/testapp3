set :application, "testapp3"
set :scm, :git
set :repository,  "git@github.com:bryanstearns/testapp3.git"

role :web, ""
role :app, ""
role :db,  "", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
