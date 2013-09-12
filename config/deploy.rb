set :application, "kampus"
set :repository,  ""

set :scm, :git

set :deploy_to, "/web-rails/#{application}"

set :user, ""
set :scm_username, "glendkampuskoit"
set :use_sudo, false

role :web, ""
role :app, ""
role :db,  "", :primary => true

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
	task :bundle_gems do
		run "bundle install"
	end
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
