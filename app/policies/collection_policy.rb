class CollectionPolicy < ApplicationPolicy
  
  class Scope < Scope
    def resolve
      scope.where(user: collection.user)
    end
  end

  def show?
     return true if user.present? && user == collection.user 
  end
 
  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == collection.user
  end
 
  def destroy?
    return true if user.present? && user == collection.user
  end
 
  private
 
    def collection
      record
    end
end