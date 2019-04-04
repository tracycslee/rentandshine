class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  #only the owner can update
  def update?
    is_owner?
  end

  private

  def is_owner?
    record.user == user
  end
end
