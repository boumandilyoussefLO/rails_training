class RegistrationsController < ApplicationController
    def signUp
        @user = User.new
    end
    def create
        begin
        @user=User.new(user_params)
        @user.save
        if @user.save
            session[:user_id]=@user.id
            flash[:notice]= "user successefully added!"
            redirect_to root_path ,status: 301
            
        else
            render :signUp, status: 422
        end
    rescue  => error
        puts error
    end
    end

    private
    def user_params
        params.require(:user).permit(:username,:email,:password,:password_confirmation)
    end
end