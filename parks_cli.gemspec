lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "parks_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "parks_cli"
  spec.version       = ParksCli::VERSION
  spec.authors       = ["<github username>"]
  spec.email         = ["<github email address>"]

  spec.summary       = ""
  spec.description   = ""
  spec.homepage      = "https://github.com/rstacey06/Parks_cli_project"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rstacey06/Parks_cli_project"
  spec.metadata["changelog_uri"] = "https://github.com/rstacey06/Parks_cli_project/commits/master"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "pry"
end
