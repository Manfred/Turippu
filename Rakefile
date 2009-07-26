require 'rake/testtask'
require 'rake/rdoctask'

task :default => :spec

Rake::TestTask.new('spec') do |t|
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end