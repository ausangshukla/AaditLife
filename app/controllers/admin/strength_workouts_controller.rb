module Admin
  class StrengthWorkoutsController < Admin::ApplicationController
    
    def new
        resource = StrengthWorkout.new(user_id: params[:user_id])
        render locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
        }
    end

  end
end
