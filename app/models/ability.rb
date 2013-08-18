# -*- encoding : utf-8 -*-
class Ability
  include CanCan::Ability

  def initialize(user)
    return if user.nil?   

    if !user.nil? 
      can [:me, :modify, :change], User
      can :access, :system #基本权限检查，必须要登录
      can :read, :option #系统选项
      can :read, :dict #数据字典
    end

    if user.is?("operator")
      can :manage, Declaration do |declaration|
        user.managing?(declaration.enterprise) && !declaration.is_finish
      end

      can :read, Declaration do |declaration|
        user.managing? declaration.enterprise
      end 

      cannot :destroy, Declaration

      can :manage, Cargo do |cargo|
        user.managing? cargo.enterprise
      end

      cannot :destroy, Cargo
      
      can :manage, Contract do |contract|
        user.managing? contract.enterprise
      end

      cannot :destroy, Contract
      
      #setting the user permission for application, bill
      can :manage, Application do |application|
        user.managing?(application.enterprise) && !application.is_finish
      end

      can :read, Application do |application|
        user.managing? application.enterprise
      end

      cannot :destroy, Application

      can :manage, Bill do |bill|
        user.managing?(bill.enterprise) && !bill.is_finish
      end

      can :read, Bill do |bill|
        user.managing? bill.enterprise
      end

      cannot :destroy, Bill
      
    end

    if user.is?("enterprise")
      can [:manage, :declarate], Declaration do |declaration|
        user.managing?(declaration.enterprise) && !declaration.is_finish
      end

      can :read, Declaration do |declaration|
        user.managing? declaration.enterprise
      end

      can :manage, Contract do |contract|
        user.managing? contract.enterprise
      end 

      can :manage, Cargo do |cargo|
        user.managing? cargo.enterprise
      end

      #setting the user permission for application, bill
      can [:manage, :declarate], Application do |application|
        user.managing?(application.enterprise) && !application.is_finish
      end

      can :read, Application do |application|
        user.managing? application.enterprise
      end

      can [:manage, :declarate], Bill do |bill|
        user.managing?(bill.enterprise) && !bill.is_finish
      end

      can :read, Bill do |bill|
        user.managing? bill.enterprise
      end


    end

    if user.is? "staff"
      can :manage, :all
      can :manage, :dict
      cannot :manage, User
    end 
    
    if user.is? "admin"
      can :manage, :all
      can :manage, :dict
    end
    
    
    
    
    
    
    
    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
