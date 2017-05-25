class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.is_admin?
      can :manage, :all
    else
      if user
        can [:create, :destroy], [Comment]
        can [:show], [User]
      end
    end
  end
end
