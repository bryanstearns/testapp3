set :stages, Dir.glob("config/deploy/*.rb").map{|x| File.basename(x, ".rb")}
set :default_stage, 'hack'
require 'bundler/capistrano'
require 'capistrano/ext/multistage'
require 'fileutils'

set :application, "testapp3"
set :scm, :git
set :repository,  "https://github.com/bryanstearns/testapp3.git"

set :copy_exclude, [
  ".git", ".svn", ".DS_Store", "config/database.yml",
  "config/biglietto.yml"
]
set :use_sudo, false


# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
