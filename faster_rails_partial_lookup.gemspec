lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faster_rails_partial_lookup/version'

Gem::Specification.new do |spec|
  spec.name          = 'faster_rails_partial_lookup'
  spec.version       = FasterRailsPartialLookup::VERSION
  spec.authors       = ['Michael Wheeler']
  spec.email         = ['mwheeler@g2crowd.com']

  spec.summary       = 'faster_rails_partial_lookup gem'

  spec.files         = `[ -d ".git" ] > /dev/null && type git > /dev/null && git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview', '< 6.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
