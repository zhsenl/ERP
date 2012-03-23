require 'faker'

namespace :db do
  desc "fill some sample user in databse"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke  
    User.create!(:username => 'gavin',
                   :name => 'gavin',
                   :email => 'gavin.lau@foxmail.com',
                   :password => 'gavin',
                   :password_confirmation => 'gavin')  
    200.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      password = "password"
      User.create!(:username => n,
                   :name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
    
  end
end