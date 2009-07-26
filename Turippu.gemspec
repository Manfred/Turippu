# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{Turippu}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Manfred Stienstra"]
  s.date = %q{2009-07-26}
  s.description = %q{A trip-code library for Ruby.}
  s.email = %q{manfred@fngtps.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["lib/tripcode.rb", "README"]
  s.has_rdoc = true
  s.homepage = %q{http://manfred.github.com}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A library to generate trip-codes for a password as a way to do weak authentication.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
