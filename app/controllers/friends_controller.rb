class FriendsController < ApplicationController
    def add_friend
        @friend=Friend.new 
    end
    
    def create
        puts "friend:" + get_friend_object.to_s
        friend= Friend.new(get_friend_object)
        if  friend.save
        
    
            flash[:notice]= "user successefully added!"
            redirect_to root_path ,status: 301
        end
        
    end

    def show_friends
        @friends= Friend.all
    end
    
    def edit
        @friend=Friend.find_by(id: params[:id])

    end

    def update
        @friend=Friend.find_by(id: params[:id])
        if @friend.present?
            @friend.update(get_friend_object)
        end
    end

    def delete 
        @friend = Friend.find_by(id: params[:id])
        @friend.destroy
        redirect_to show_friends_path
    end

    private 

    def get_friend_object
        params.require("friend").permit(:first_name,:last_name,:email,:phone)
    end
    end