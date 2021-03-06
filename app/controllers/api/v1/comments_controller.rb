class Api::V1::CommentsController < ApplicationController
    # skip_before_action :authorized, only: [:new, :create]
    
    def index
        comments =Comment.all  
        render(json: comments, except: [:updated_at, :created_at])
    end
    def create
        comment = Comment.create(comment_params)
        render json: comment
    end
    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment, except: [:updated_at, :created_at]
    end
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: comment
    end
      private
    def comment_params
        params.require(:comment).permit(:content, :user_id, :post_id)
    end
end
