class SessionsController < ApplicationController
    def logout
            session[:user_id]=nil
            flash[:notice]="loged out !"
            redirect_to root_path
    end
end