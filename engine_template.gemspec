$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_template"
  s.version     = EngineTemplate::VERSION
  s.authors     = ["Piers Rollinson", "Tim Sherratt"]
  s.email       = ["piers@mitoo.co", "tim@mitoo.co"]
  s.summary     = "EngineTemplate Gem"
  s.description = "EngineTemplate Gem"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]


  # Gem dependencies 
  s.add_dependency "rails", "~> 4.1.6"
  # Probably some of need these...
  # *** nb. for any engines you include, you must ALSO add them to the gemfile
  # s.add_dependency "jbuilder"
  # s.add_dependency "api_base"
  # s.add_dependency "storm"
  # s.add_dependency "users"

  # Add Dependenies here


  # Dev Dependencies
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
  # for running specs within the dummy app
  s.add_development_dependency "mysql2" 

end
