# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # cannot :manage, :all # disable all privilege for unauthenticated users

    user ||= User.new

    alias_action :create, :read, :update,    to: :cru
    alias_action :create, :update, :destroy, to: :cud
    alias_action :read, :update,             to: :ru

    case user.role
    when 'admin'
      can :manage, :all
      can :read, ActiveAdmin::Page, name: 'Dashboard'
    when 'manager'
      can :read, ActiveAdmin::Page, name: 'Dashboard'
      can :manage, User
      can :manage, Target
      can :manage, Company
      can :manage, Client
      can :manage, Stock
      can :manage, Product
      can :read, Sale
      can :read, Activity
    when 'person'
      can :read, ActiveAdmin::Page, name: 'Dashboard'
      cannot :manage, User
      can :ru, User, id: user.id
      can :manage, Sale
      can :cru, Company
      can :cru, Client
      can :ru, Target, user_id: user.id
      can :manage, Activity
      can :manage, Lead
    end
    cannot :destroy, user # Not allowed to destroy yourself
  end
end
