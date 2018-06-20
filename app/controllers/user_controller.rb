class UserController < ApplicationController
        
    def index
    @users = User.all
    end
    
    def show
    @user = User.find(params[:id])
    end
    
    def new

    end
    
    def create
        user =User.new
        user.name = params[:name]
        user.password = params[:password]
        user.ip_address = request.ip
        
        user.save
        
        redirect_to "/user/#{user.id}"
    end
    
    def edit
        @user =User.find(params[:id])
    end
    
    def update
        user =User.find(params[:id])
        user.name = params[:name]
        user.password = params[:password]
        user.save
        redirect_to "/user/#{user.id}"
    end
    
end
