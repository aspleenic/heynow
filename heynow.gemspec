require_relative 'lib/heynow/version'

Gem::Specification.new do |spec|
  spec.name          = "heynow"
  spec.version       = Heynow::VERSION
  spec.authors       = ["PJ Hagerty"]
  spec.email         = ["pjhagerty@gmail.com"]

  spec.summary       = %q{The function of this gem will be oriented to people who are using our app after hours, pointing out to them what time it is right now.}
  spec.description   = %q{The function of this gem will be oriented to people who are using our app after hours, pointing out to them what time it is right now.}
  spec.homepage      = "https://github.com/aspleenic/heynow"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/aspleenic/heynow"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aspleenic/heynow"
  spec.metadata["changelog_uri"] = "https://github.com/aspleenic/heynow"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
