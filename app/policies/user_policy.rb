class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def update?
    record.user == user
  end
end
