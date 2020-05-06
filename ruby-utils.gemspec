# frozen_string_literal: true

require_relative "lib/subvisual/utils"

Gem::Specification.new do |spec|
  spec.name          = "subvisual-utils"
  spec.version       = Subvisual::Utils::VERSION
  spec.authors       = ["Pedro Costa"]
  spec.email         = ["pedro@subvisual.com"]

  spec.summary       = "Collection of reusable Ruby utilities by Subvisual"
  spec.homepage      = "https://github.com/subvisual/ruby-utils"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/subvisual/ruby-utils"
  spec.metadata["changelog_uri"] = "https://github.com/subvisual/ruby-utils/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(bin|test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
