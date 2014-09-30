# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_essential_content'
  s.version     = '2.0.7'
  s.authors     = ["Spencer Steffen", "Nathan Lowrie"]
  s.email       = ["spencer@citrusme.com", "nate@finelineautomation.com"]
  s.homepage    = "https://github.com/citrus/spree_essentials"
  s.summary     = %q{Spree Essentials provides a CMS for Spree Commerce sites. See readme for details...}
  s.description = %q{Spree Essentials provides a CMS for Spree Commerce sites. It provides static pages, content snippets, blogs, and an asset-upload interface.}
  s.required_ruby_version = '>= 1.9.3'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~>  2.1.0'
  s.add_runtime_dependency('acts-as-taggable-on', '~> 3.0.0')

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'better_errors'
  s.add_development_dependency 'binding_of_caller'
end
