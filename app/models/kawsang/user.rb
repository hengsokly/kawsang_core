module Kawsang
  class User < ApplicationRecord
    include Kawsang::Users::Filter
    include Kawsang::Users::OtpConcern

    acts_as_paranoid

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :confirmable, :lockable, :trackable,
           :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook, :telegram]

    attribute :role, :integer
    attribute :sign_in_type, :integer

    enum role: {
      primary_admin: 1,
      admin: 2
    }

    enum sign_in_type: {
      system: 1,
      google_oauth2: 2,
      facebook: 3,
      telegram: 4,
    }

    before_create :assign_password

    # Constant
    SYSTEM = "system"
    ROLES = [["Admin", "admin"]]

    def status
      return "archived" if deleted?
      return "locked" if access_locked?
      return "actived" if confirmed? && actived?
      return "deactivated" unless actived?

      "pending"
    end

    def send_devise_notification(notification, *args)
      devise_mailer.send(notification, self, *args).deliver_later
    end

    private
      def assign_password
        pwd = Devise.friendly_token
        self.password = pwd
        self.password_confirmation = pwd
      end

      def password_required?
        false
      end
  end
end
