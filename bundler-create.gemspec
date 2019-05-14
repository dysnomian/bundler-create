
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bundler/create/version"

Gem::Specification.new do |spec|
  spec.name          = "bundler-create"
  spec.version       = Bundler::Create::VERSION
  spec.authors       = ["Liss McCabe"]
  spec.email         = ["liss+github@cuteasheck.com"]

  spec.summary       = %q{Add a custom scaffold for new gems.}
  spec.homepage      = "https://github.com/dysnomian/bundler-create"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 2.0"
  spec.add_development_dependency "rake",      "~> 12.0"
  spec.add_development_dependency "rspec",     "~> 3.8"
  spec.add_development_dependency "simplecov", "~> 0.16"
  spec.add_development_dependency "standard",  "~> 0.0.39"
end
