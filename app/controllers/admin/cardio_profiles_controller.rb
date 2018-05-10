module Admin
  class CardioProfilesController < Admin::ApplicationController
    def new
        resource = CardioProfile.new(user_id: params[:user_id], fitness_test_id: params[:fitness_test_id])
        render locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
        }
    end
  end
end
