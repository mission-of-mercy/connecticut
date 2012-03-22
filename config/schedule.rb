set :output, "/home/deploy/mom/current/log/cron.log"

every 15.minutes do
  command "backup.sh"
end