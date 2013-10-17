# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jruby-zk/version'

Gem::Specification.new do |gem|
  gem.name          = "jruby-zk"
  gem.version       = JRubyZk::VERSION
  gem.authors       = ["Brandon Dennis"]
  gem.email         = ["toady00@gmail.com"]
  gem.description   = %q{Simple wrapper around ZooKeeper Jars for JRuby}
  gem.homepage      = "https://github.com/Toady00/jruby-zk"
  gem.summary       = %q(JRuby Zk includes the ZooKeeper jars and all the jars it depends on for zk clients.)
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
