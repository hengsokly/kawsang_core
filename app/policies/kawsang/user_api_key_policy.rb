module Kawsang
  class UserApiKeyPolicy < ApplicationPolicy
    def index?
      false
    end

    def show?
      user.id == record.id
    end

    def create?
      false
    end

    def update?
      show?
    end

    # class Scope < Scope
    #   # NOTE: Be explicit about which records you allow access to!
    #   def resolve
    #   end
    # end
  end
end
