class PasswordsController < ApplicationController
before_action :check_user_session
    def edit 
        puts "params:" + params.to_s
        if Current.user.update(get_pass_values)
            redirect_to signIn_path ,notice:"password reset successfully !" 
            session[:user_id]=nil
        else
            render :index ,status:400
            puts "errors:" + Current.user.errors.full_messages.to_s
        end
    end
    def index
    end

    private
       def get_pass_values
        params.require(:user).permit(:password,:password_confirmation)
       end

end