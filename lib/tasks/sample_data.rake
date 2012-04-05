require 'faker'

namespace :sample do
  desc "fill some sample user in databse"
  task :user do    
    User.create!(:username => 'gavin',
                   :name => 'gavin',
                   :email => 'gavin.lau@foxmail.com',
                   :password => 'gavin',
                   :password_confirmation => 'gavin')  
    200.times do |n|
      User.create!(:username => n,
                   :name => Faker::Name.name,
                   :email => Faker::Internet.email,
                   :password => "password",
                   :password_confirmation => "password")
    end    
  end
  
  
  desc "fill some sample foreign_enterprise in databse"
  task :foreign_enterprise do
    200.times do |n|
      ForeignEnterprise.create!(:code => n,
                   :name => Faker::Company.name,
                   :address => Faker::Address.city,
                   :linkman => Faker::Name.name,
                   :telephone => Faker::PhoneNumber.phone_number)
    end    
  end
end