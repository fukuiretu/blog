$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blog"
  s.version     = Blog::VERSION
  s.authors     = ["fukuiretu"]
  s.email       = ["s0232101@gmail.com"]
  s.homepage    = "http://example.com"
  s.summary     = "Summary of Blog."
  s.description = "Description of Blog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  # s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2"
end
