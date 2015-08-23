namespace :cfnlego do
  task :build do
    `gem build cfnlego.gemspec`
  end

  task :install do
  end
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => [:spec]
