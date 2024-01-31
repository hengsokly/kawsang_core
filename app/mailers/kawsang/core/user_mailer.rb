# frozen_string_literal: true
module Kawsang
  module Core
    class UserMailer < ApplicationMailer
      def otp_instructions(user, token)
        @user = user
        @token = token

        mail(to: user.email, subject: "#{ENV['APP_NAME']} - One time sign in")
      end
    end
  end
end
