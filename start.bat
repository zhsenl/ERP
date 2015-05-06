cd /d %~dp0
start /b thin start -p 3000 -e production
start /b thin start -p 3001 -e production
start /b thin start -p 3002 -e production
start /b thin start -p 3003 -e production
ruby lib/task_check.rb