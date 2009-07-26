require 'rake/testtask'
require 'rake/rdoctask'

task :default => :spec

Rake::TestTask.new('spec') do |t|
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end

namespace :docs do
  Rake::RDocTask.new('generate') do |rdoc|
    rdoc.title = 'Turippu'
    rdoc.main = "README"
    rdoc.rdoc_files.include('README', 'lib/tripcode.rb')
    rdoc.options << "--all" << "--charset" << "utf-8"
  end
end