require File.expand_path('../lib/current_domain/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Andrei Gridnev']
  gem.email         = ['andrew.gridnev@gmail.com']
  gem.summary       = 'Gets current domain of the web app'
  gem.description   = 'Gets current domain of the web app'
  gem.homepage      = 'https://github.com/andrewgr/current_domain/'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($ORS)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.name          = 'current_domain'
  gem.require_paths = ['lib']
  gem.version       = CurrentDomain::VERSION

  gem.add_runtime_dependency 'activesupport'

  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'actionpack'
  gem.add_development_dependency 'rubocop', '~> 0.30'
  gem.add_development_dependency 'cane', '~> 2.6', '>= 2.6.1'
  gem.add_development_dependency 'shoulda', '~> 3.5'
  gem.add_development_dependency 'shoulda-matchers', '~> 2.8', '>= 2.8.0'
end
