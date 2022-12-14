class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user.id)
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def my_offers?
    true
  end
end
