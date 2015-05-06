require 'rubygems'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.start_new

rails_root = File.expand_path('../../', __FILE__)
scheduler.in("1s") do
	puts "start ..."
	system('bundle exec rake abc:test')
	puts "end..."
end

scheduler.join
