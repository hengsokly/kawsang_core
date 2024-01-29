require_relative "lib/kawsang/core/version"

Gem::Specification.new do |spec|
  spec.name        = "kawsang_core"
  spec.version     = Kawsang::Core::VERSION
  spec.authors     = [""]
  spec.email       = [""]
  spec.homepage    = "https://github.com/hengsokly/kawsang_core"
  spec.summary     = "Core domain models for Kawsang apps"
  spec.description = "Core domain models for Kawsang apps"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3"
  spec.add_dependency "devise", "~> 4.8.1"
  # spec.add_dependency "paranoia", "~> 2.4.3"
  # spec.add_dependency "date_validator", "~> 0.10.0"
  # spec.add_dependency "pumi", "~> 0.10.0"
  # spec.add_dependency "awesome_nested_set", "~> 3.2.1"
  # spec.add_dependency "doorkeeper", "~> 5.5.2"
  # spec.add_dependency "validate_url", "~> 1.0.13"
  # spec.add_dependency "carrierwave", "~> 2.1"
  # spec.add_dependency "telegram-bot", "~> 0.15.3"
  # spec.add_dependency "sidekiq", "~> 6.2.1"
  # spec.add_dependency "httparty", "~> 0.19.0"
  # spec.add_dependency "roo", "~> 2.8.3"
end
