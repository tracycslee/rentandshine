class ListingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  # everyone can add a listing
  def create?
    true
  end

  #only the owner can update
  def update?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  private

  def is_owner?
    record.user == user
  end
end
