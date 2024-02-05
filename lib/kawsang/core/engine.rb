require "devise"
require "paranoia"
require "sidekiq"
require "omniauth/rails_csrf_protection"
require "omniauth-google-oauth2"
require "omniauth-facebook"
require "omniauth/telegram"
require "pundit"
require "doorkeeper"
require "sidekiq"

module Kawsang
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Kawsang
      engine_name :kawsang

      config.active_job.queue_adapter = :sidekiq

      config.generators do |g|
        g.test_framework :rspec
        g.fixture_replacement :factory_bot # newly added code for factory_bot
        g.factory_bot dir: "spec/factories" # newly added code for factory_bot
      end

      # newly added code for factory_bot to load all definitions in spec/factories
      config.factory_bot.definition_file_paths = ["../../../app/spec/factories/"] if defined?(FactoryBot)
    end
  end
end
