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

  # Soft delete
  spec.add_dependency "paranoia", "~> 2.6.3"

  # Background process
  spec.add_dependency "sidekiq", "~> 7.2.0"

  # Authentication
  spec.add_dependency "devise", "~> 4.9.3"

  # Omniauth
  spec.add_dependency "omniauth-rails_csrf_protection", "~> 1.0.1"
  spec.add_dependency "omniauth-google-oauth2", "~> 1.0.1"
  spec.add_dependency "omniauth-facebook", "~> 9.0.0"
  spec.add_dependency "omniauth-telegram", "~> 0.2.1"

  # Authorization
  spec.add_dependency "pundit", "~> 2.2.0"

  # oAuth2 provider
  spec.add_dependency "doorkeeper", "~> 5.6.8"

  # Clean attribute space
  spec.add_dependency "strip_attributes", "~> 1.13.0"

  spec.add_development_dependency "rspec-rails"
end
