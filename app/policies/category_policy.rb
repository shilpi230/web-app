class CategoryPolicy < ApplicationPolicy
  def index?
    true
  end
  
  def new?
    false
  end
  
  def create?
    false
  end
 
  def update?
    false
  end
 
  def destroy?
    false
  end

end