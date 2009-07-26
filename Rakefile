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

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "Turippu"
    s.description = "A trip-code library for Ruby."
    s.summary = "A library to generate trip-codes for a password as a way to do weak authentication."
    s.email = "manfred@fngtps.com"
    s.homepage = "http://manfred.github.com"
    
    s.authors = ["Manfred Stienstra"]
    s.files = %w(lib/tripcode.rb README)
  end
rescue LoadError
end