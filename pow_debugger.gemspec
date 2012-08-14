# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pow_debugger/version'

Gem::Specification.new do |gem|
  gem.name          = "pow_debugger"
  gem.version       = PowDebugger::VERSION
  gem.authors       = ["Chris Moore"]
  gem.email         = ["moorecp@gmail.com"]
  gem.description   = %q{Easily enable ruby-debugger for use with Pow!}
  gem.summary       = %q{This gem fires up a remote debugger and provides a rake task for connecting to that debugger. The intended use is for debugging when serving your app via Pow!}
  gem.homepage      = "https://github.com/moorecp/pow_debugger"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('debugger')
end
