# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wilkins_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "wilkins_view_tool"
  spec.version       = WilkinsViewTool::VERSION
  spec.authors       = ["wilkigab001"]
  spec.email         = ["wilkigab001@gmail.com"]

  spec.summary       = %q{ My understanding of a Rubygem creation.}
  spec.homepage      = "https://devcamp.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
