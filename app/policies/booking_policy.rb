class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end
  def index?
    true
  end

  def successful?
    true
  end

  def destroy?
    true
  end

  def show?
    true
  end
end
