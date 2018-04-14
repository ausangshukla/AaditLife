class Ability
  include CanCan::Ability

  def initialize(user)
    if(!user)
      @user =  User.guest
    else
      @user = user
    end


    case @user.role
    
      when "Super User"
        can [:admin, :manage], :all
                
      when "Company Admin"
        admin_privilages
      when "Coach"
        coach_privilages
      when "Runner"
        runner_privilages  
      else
        guest_privilages
    end
      
  end

  
    def guest_privilages
        can :read, Company
    end

    def runner_privilages
        guest_privilages
        can :manage, User, :id=>@user.id
        can :manage, Goal, :user_id =>@user.id
        can :manage, MedicalHistory, :user_id =>@user.id
        can :read, FitnessTest, :user_id =>@user.id
        can :read, Workout, :user_id =>@user.id
        can :manage, Schedule, :user_id =>@user.id
        can :read, Target, :user_id =>@user.id
    end

    def coach_privilages
    end

    def admin_privilages
    end
end
