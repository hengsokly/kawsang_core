source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in core.gemspec.
gemspec

gem "puma"

gem "pg"

gem "sprockets-rails"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

eval(File.read(File.dirname(__FILE__) + "/engine_development_dependencies.rb"))
