$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "classifieds/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "classifieds"
  s.version     = Classifieds::VERSION
  s.authors     = ["Newton Garcia"]
  s.email       = ["newton@newx.com.br"]
  s.homepage    = "www.newx.com.br"
  s.summary     = "Classifieds engine"
  s.description = "Simple classifieds engine for rails"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "mysql2"
end
