require 'faker'

namespace :db do
  desc "fill some sample user in databse"
  task :user => :environment do    
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
  task :foreign_enterprise => :environment do
    200.times do |n|
      ForeignEnterprise.create!(:code => n,
                   :name => Faker::Company.name,
                   :address => Faker::Address.city,
                   :linkman => Faker::Name.name,
                   :telephone => Faker::PhoneNumber.phone_number)
    end    
  end
  
  desc "fill some sample enterprise in databse"
  task :enterprise => :environment do
    200.times do |n|
      
      enterprise = Enterprise.create!(:code => n.to_s + "0000",
                     :name => Faker::Company.name,
                     :address => Faker::Address.city,
                     :linkman => Faker::Name.name,
                     :telephone => Faker::PhoneNumber.phone_number)
      enterprise.enterprise_custom_option = EnterpriseCustomOption.create!(
                                    :enterprise_id => enterprise.id, 
                                    :custom_code => "0000",
                                    :proxy_unit_price => 0,
                                    :service_unit_price =>0)               
    end    
  end
end