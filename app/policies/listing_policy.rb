class ListingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    # everyone can add a listing
    def create?
      return true
    end

    #only the owner can update
    def update?
      is_owner_or_admin?
    end

    def destroy?
      is_owner_or_admin?
    end

    private

    def is_owner_or_admin?
      record.user == user || user.admin
    end
  end
end
