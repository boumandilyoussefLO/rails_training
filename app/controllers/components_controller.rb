class ComponentsController < ApplicationController
    if session[:user_id]
        @user=User.find_by(id: session[:user_id])
    end
end