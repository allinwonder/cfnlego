namespace :cfnlego do
  task :build do
    `gem build cfnlego.gemspec`
  end

  task :install do
  end

  task :supported_resources do
    `cd lib/cfnlego/resources/ && find . | grep -v '^.$'| sed -e "s/^\.\///" | grep '/' | sed 's/\//::/g' | sed 's/\.yaml//' | sed 's/^/AWS::/g'`
  end
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => [:spec]
