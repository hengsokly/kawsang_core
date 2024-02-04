# frozen_string_literal: true

module Kawsang
  module Users
    module OauthProvider
      extend ActiveSupport::Concern

      included do
        # Door keeper association
        has_many :access_grants,
                  class_name: "Doorkeeper::AccessGrant",
                  foreign_key: :resource_owner_id,
                  dependent: :delete_all # or :destroy if you need callbacks

        has_many :access_tokens,
                  class_name: "Doorkeeper::AccessToken",
                  foreign_key: :resource_owner_id,
                  dependent: :delete_all # or :destroy if you need callbacks

        # https://rubyyagi.com/rails-api-authentication-devise-doorkeeper/
        # the authenticate method from devise documentation
        def self.authenticate(email, password)
          user = User.find_for_authentication(email: email)
          user&.valid_password?(password) ? user : nil
        end
      end
    end
  end
end
