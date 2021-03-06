class CarPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def create?
    @user.nickname == 'chrismellard'
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
