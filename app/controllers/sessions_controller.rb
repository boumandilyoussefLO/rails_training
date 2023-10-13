class SessionsController < ApplicationController
    def logout
            session[:user_id]=nil
             flash[:notice]="loged out !"
            redirect_to root_path
    end
    def login
        user= User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
        puts "user " + user.email + " suucessfully loged in !"
        session[:user_id]= user.id
        redirect_to root_path ,notice: "user " + user.email + " suucessfully loged in !"

        else
            puts "faild attempt no user found !" 
            flash[:alert] = "Wrong password or email please try again !"
            render :signIn , status:400
        end
    end
    def signIn
    end
end