require 'faker'

namespace :db do
  desc "fill finance data in databse in production environment"
  task :finance => :environment do

    Declaration.last.id.times do |n|
      Finance.create!(:declaration_id => n + 1,
                   :is_made => false,
                   :review => 1,
                   )
    end
  end



end