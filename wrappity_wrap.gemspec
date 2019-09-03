lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wrappity_wrap/version"

Gem::Specification.new do |spec|
  spec.name          = "wrappity_wrap"
  spec.version       = WrappityWrap::VERSION
  spec.authors       = ["Tony Griffin"]
  spec.email         = ["tony@madetech.com"]

  spec.summary       = %q{A single function that takes two arguments, a string, and a column number. The function returns the string, but with line breaks inserted at the right places to make sure that no line is longer than the column number. You try to break lines at word boundaries.}
  spec.description   = %q{}
  spec.homepage      = 'https://rubygems.org/gems/example'
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tonymadetech/wrappity_wrap_gem.git"
  spec.metadata["changelog_uri"] = ''

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
