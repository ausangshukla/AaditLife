module Admin
  class TargetsController < Admin::ApplicationController
    
    def new
        resource = Target.new(user_id: params[:user_id])
        render locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
        }
    end

  end
end
