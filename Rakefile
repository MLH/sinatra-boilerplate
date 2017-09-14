require_relative 'app'

require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

task(:default).clear
task default: [:spec]

task(:spec).clear
RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
end

task :console do
  exec "irb -r irb/completion -r ./app"
end
