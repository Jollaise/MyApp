class Ability
  include CanCan::Ability
  user.has_role?(:admin)
  def initialize(user)
    user ||= User.new #guest user (not logged in)
    can :manage, User, id: user.id
  end
end
