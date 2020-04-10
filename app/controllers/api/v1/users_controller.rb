class Api::V1::UsersController < ApplicationController

    def index
        users = User.all  

        render(json: users, except: [:updated_at, :created_at])
    end

    def create
        user = User.create(user_params)
    
        render json: user
    end
      
    def update
        user = User.find(params[:id])
    
        user.update(user_params)
    
        render json: user, except: [:updated_at, :created_at]
    end
    
    def destroy
        user = User.find(params[:id])
    
        user.destroy
    
        render json: user
    end
    
      private
    
    def user_params
        params.require(:user).permit(:name, :userName, :password, :email, :imageUrl)
    end
    
end
