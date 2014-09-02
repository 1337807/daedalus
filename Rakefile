require 'rake/testtask'

desc "Run the tests"
task :default => :test
task :test do
  $:.unshift('./')
  require 'test/test_helper'

  files = Dir.glob('test/**/*_test.rb')
  files.each do |file|
    require file
  end
end

