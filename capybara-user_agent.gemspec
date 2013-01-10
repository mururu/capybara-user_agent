# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'capybara/user_agent/version'

Gem::Specification.new do |gem|
  gem.name          = "capybara-user_agent"
  gem.version       = Capybara::UserAgent::VERSION
  gem.authors       = ["Yuki Ito"]
  gem.email         = ["yuki@gnnk.net"]
  gem.description   = %q{UserAgent on Capybara}
  gem.summary       = %q{UserAgent on Capybara}
  gem.homepage      = "https://github.com/mururu/capybara-user_agent"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency("capybara", "~> 2.0", ">= 2.0.2")
end
