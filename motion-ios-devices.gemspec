# -*- encoding: utf-8 -*-
VERSION = "0.2"

Gem::Specification.new do |spec|
  spec.name          = "motion-ios-devices"
  spec.version       = VERSION
  spec.authors       = ["Andy Stechishin"]
  spec.email         = ["andy@canasoftware.ca"]
  spec.description   = %q{Simplify RubyMotion build and run on simulator to target specific device}
  spec.summary       = %q{Run a RubyMotion app on a specific device}
  spec.homepage      = ""
  spec.license       = "BSD"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
