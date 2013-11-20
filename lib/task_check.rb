require 'rubygems'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

rails_root = File.expand_path('../../', __FILE__)

scheduler.every("2m") do
  system('bundle exec rake receipt:check_receipts')
  #system('bundle exec rake receipt:app_bill_check_receipts')
end

scheduler.join