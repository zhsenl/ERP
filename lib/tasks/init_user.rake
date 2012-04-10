require 'faker'

namespace :db do
  desc "init user in databse"
  task :init_user => :environment do    
    User.create!(:username => 'gavin',
                   :name => 'gavin',
                   :email => 'gavin.lau@foxmail.com',
                   :password => 'gavin',
                   :password_confirmation => 'gavin')
  end  
end