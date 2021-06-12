require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.7.2'

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }





# # Load DSL and set up stages
# require "capistrano/setup"
# # Include default deployment tasks
# require "capistrano/deploy"
# require "capistrano/scm/git"
# install_plugin Capistrano::SCM::Git

# set :rbenv_type, :user
# set :rbenv_ruby, '2.7.2'

# # require "capistrano/rvm"
# require "capistrano/rbenv"
# require 'capistrano/rails'

# # require "capistrano/chruby"
# require "capistrano/bundler"
# require "capistrano/rails/assets"
# require "capistrano/rails/migrations"
# require "capistrano/passenger"

# # Load custom tasks from `lib/capistrano/tasks` if you have any defined
# Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }




