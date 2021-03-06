lib = File.join File.dirname(__FILE__), 'lib'
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'async_cache/version'

Gem::Specification.new do |s|
  s.name     = 'async_cache'
  s.version  = AsyncCache::VERSION
  s.authors  = ['Adam Derewecki',      'Dirk Gadsden']
  s.email    = ['derewecki@gmail.com', 'dirk@esherido.com']
  s.summary  = 'Pattern and library for implementing asynchronous caching'
  s.homepage = 'https://github.com/Everlane/async_cache'
  s.license  = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'sourcify', '~> 0.5.0'

  s.add_development_dependency 'appraisal',           '~> 2.2.0'
  s.add_development_dependency 'rails',               '~> 5.0.1'
  s.add_development_dependency 'sidekiq',             '~> 5.0.5'
  s.add_development_dependency 'redis-namespace',     '~> 1.6.0'
  s.add_development_dependency 'sinatra',             '~> 2.0.4'
  s.add_development_dependency 'rspec',               '~> 3.4.0'
  s.add_development_dependency 'pry',                 '~> 0.10.1'
  s.add_development_dependency 'simplecov',           '~> 0.9.2'
  s.add_development_dependency 'redis-activesupport', '~> 5.0.7'
  s.add_development_dependency 'httparty',            '~> 0.13.7'
  s.add_development_dependency 'yard',                '~> 0.9.11'
  s.add_development_dependency 'redcarpet',           '~> 3.3.4'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
end
