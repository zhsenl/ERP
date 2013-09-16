require 'rubygems'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

rails_root = File.expand_path('../../', __FILE__)

scheduler.every("2m") do
   system('rake receipt:check_receipts')
   system('rake receipt:app_bill_check_receipts')
end

scheduler.every("90s") do
   system("ruby #{rails_root +'/lib/tasks/dispatcher.rb'}")
   system("ruby #{rails_root +'/lib/tasks/app_bill_dispatcher.rb'}")
end

scheduler.join