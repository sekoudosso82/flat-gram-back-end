class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [ :create]
    def index
        users = User.all  

        render(json: users, except: [:updated_at, :created_at])
    end
    def show
      user = User.find(params[:id])
      render(json: user, except: [:updated_at, :created_at])
      # include: => {
          # :likes, 
          # :comments => { :only => [:content]} },
          # :except => [:updated_at, :created_at]
          # ])
      
      
  end

    def create
        # make a user uses the username and password
        user = User.new(
            userName: params[:userName],
            password: params[:password],
          )
      
          if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}
          else
            render json: {errors: user.errors.full_messages}
          end
      
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
        params.require(:user).permit(:userName, :password)

        # params.require(:user).permit(:name, :userName, :password, :email, :imageUrl)
    end
    
end
