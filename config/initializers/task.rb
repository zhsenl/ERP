require 'rubygems'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

scheduler.every("2m") do
   system('rake receipt:check_receipts')
end

scheduler.every("10s") do
   system("ruby #{Rails.root.join('lib', 'tasks', "dispatcher.rb")}")
end