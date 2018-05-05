module Admin
  class FitnessTestsController < Admin::ApplicationController

    def new
        resource = FitnessTest.new(user_id: params[:user_id])
        render locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
        }
    end

  end
end
