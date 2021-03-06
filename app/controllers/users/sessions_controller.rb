class Users::SessionsController < Devise::SessionsController

  protected

    def after_sign_in_path_for(resource)
      user_path(resource)
    end

    def after_sign_up_path_for(resource)
      user_path(resource)
    end
end
