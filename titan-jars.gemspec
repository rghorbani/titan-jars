$:.push File.expand_path("../lib", __FILE__)
require "titan-jars/version"


Gem::Specification.new do |s|
  s.name        = "titan-jars"
  s.version     = Titan::Jars::VERSION
  s.authors     = "Reza Ghorbani Farid"
  s.email       = "r.ghorabani.f@gmail.com"
  s.homepage    = "https://github.com/rghorbani/titan-jars"
  s.summary     = "The Titan v#{Titan::Jars::TITAN_VERSION} JAR files"
  s.description = "The Java Jar files for the Titan, a high performance, fully ACID transactional graph database"

  s.rubyforge_project = "titan-jars"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end