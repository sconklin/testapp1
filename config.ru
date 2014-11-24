# This file is used by Rack-based servers to start the application.
puts 'configuring from config.ru'

if ENV['RAILS_ENV'] == 'production'
 num_workers = (ENV["WEB_CONCURRENCY"] || 3).to_i
 puts 'Setting up worker killer'
 require 'unicorn/worker_killer'

  # Set worker kill memory limits
  dyno_memory_limit = (ENV['HEROKU_DYNO_MEMORY_LIMIT_MB'] || 2048).to_i * (1024 ** 2)
  mem_per_worker = dyno_memory_limit.to_f / num_workers
  kill_mem_min = (0.75 * mem_per_worker).round
  kill_mem_max = (0.80 * mem_per_worker).round
  use Unicorn::WorkerKiller::Oom, kill_mem_min, kill_mem_max

  # Set worker kill request number limits
  kill_requests_min = 1000
  kill_requests_max = 1000
  use Unicorn::WorkerKiller::MaxRequests, kill_requests_min, kill_requests_max
end

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
