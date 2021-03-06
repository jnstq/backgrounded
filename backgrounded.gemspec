# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{backgrounded}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Sonnek"]
  s.date = %q{2009-08-11}
  s.email = %q{ryan.sonnek@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "backgrounded.gemspec",
     "lib/backgrounded.rb",
     "lib/handler.rb",
     "lib/handler/delayed_job_handler.rb",
     "lib/handler/inprocess_handler.rb",
     "lib/handler/job_fu_handler.rb",
     "test/backgrounded_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/wireframe/backgrounded}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple API to run Model methods in the background}
  s.test_files = [
    "test/backgrounded_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
