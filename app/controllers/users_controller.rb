class UsersController < ApplicationController
    def userList
        if session[:user_id]
            @user=User.find_by(id: session[:user_id])
            @userList = User.all()
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
        if @user.update(get_new_user_data)
            redirect_to userList_path, notice:"user Updated successefully !"
        else
            render :editPage, status: 400
            p "errors:" + @user.errors.full_messages.to_s
        end
    end
    def editPage
        @user = User.find_by(id: params[:id])

    end
    
    
    def delete
        @user = User.find_by(id: params[:id])
        @user.destroy
        redirect_to userList_path
    end

    private 
    def get_new_user_data
        params.require(:user).permit(:username,:email)
    end

end 