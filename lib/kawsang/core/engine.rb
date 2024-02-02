require "devise"
require "paranoia"
require "sidekiq"
require "omniauth/rails_csrf_protection"
require "omniauth-google-oauth2"
require "omniauth-facebook"
require "omniauth/telegram"
require "pundit"
require "doorkeeper"

module Kawsang
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Kawsang
      engine_name :kawsang

      config.active_job.queue_adapter = :sidekiq
    end
  end
end
