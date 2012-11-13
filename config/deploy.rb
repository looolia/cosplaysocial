# RVM

#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'default'
#set :rvm_type, :user

# Bundler

require "bundler/capistrano"

# General

set :application, "cosplaysocial"
set :user, "deployer"
set :password, "oresama1911" 

set :bundle_flags, ""

set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy

set :use_sudo, false

# Git

set :scm, :git
set :repository,  "~//lab-8/#{application}/.git"
set :branch, "master"

# VPS

role :web, "173.237.198.18"
role :app, "173.237.198.18"
role :db,  "173.237.198.18", :primary => true
role :db,  "173.237.198.18"

# Passenger

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end