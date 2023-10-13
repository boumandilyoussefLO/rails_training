class ApplicationController < ActionController::Base
before_action :set_current_user 
    def set_current_user
        if session[:user_id]
            Current.user=User.find_by(id: session[:user_id])
        end
    end

    
    def check_user_session
        redirect_to signIn_path ,alert: "You must be signed in for this action !" if Current.user.nil?
    end
end
