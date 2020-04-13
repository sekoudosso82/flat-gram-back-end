class Api::V1::LikesController < ApplicationController
    def index
        likes =Like.all  
        render(json: likes, except: [:updated_at, :created_at])
    end
    def create
        like = Like.create(like_params)
        render json: like
    end
    def update
        like = Like.find(params[:id])
        like.update(like_params)
        render json: like, except: [:updated_at, :created_at]
    end
    def destroy
        like = Like.find(params[:id])
        like.destroy
        render json: like
    end
      private
    def like_params
        params.require(:like).permit(:user_id, :post_id, :count)
    end
end
