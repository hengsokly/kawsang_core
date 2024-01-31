require "devise"
require "paranoia"
require "sidekiq"
require "omniauth/rails_csrf_protection"
require "omniauth-google-oauth2"
require "omniauth-facebook"
require "omniauth/telegram"
require "pundit"

module Kawsang
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Kawsang
      engine_name :kawsang

      config.autoload_paths += %W(
        #{config.root}/lib
      )
    end
  end
end
