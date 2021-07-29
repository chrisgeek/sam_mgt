# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    cannot :manage, :all # disable all privilege for unauthenticated users

    user ||= User.new

    alias_action :create, :read, :update,    to: :cru
    alias_action :create, :update, :destroy, to: :cud
    alias_action :read, :update,             to: :ru

    case user.role
    when 'admin'
      can :manage, :all
    when 'manager'
      can :manage, User
      can :manage, Target
      can :manage, Company
      can :manage, Client
      can :manage, Stock
      can :read, Sale
    when 'person'
      cannot :manage, User
      can :ru, User, id: user.id
      can :manage, Sale
      can :ru, Target, user_id: user.id
    end
    cannot :destroy, user # Not allowed to destroy yourself
  end
end
