# booking_policy.rb
class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # only owner can make a booking
  def create?
    record.listing.user != user
  end

  private

  def is_owner?
    record.user == user
  end
end
