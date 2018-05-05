module Admin
  class WorkoutsController < Admin::ApplicationController
    
    def new
        resource = Workout.new(user_id: params[:user_id])
        render locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
        }
    end

  end
end
