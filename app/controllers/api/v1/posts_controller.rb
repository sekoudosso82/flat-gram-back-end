class Api::V1::PostsController < ApplicationController
    # skip_before_action :authorized #, only: [:new, :create]
    def index
        posts = Post.all  

        # render(json: posts, except: [:updated_at, :created_at])
        render json: posts.to_json(include: [:likes, :comments])
    end

    def show
        post = Post.find(params[:id])
        render json: post.to_json(include: [:likes, :comments])
            # include: => {
            # :likes, 
            # :comments => { :only => [:content]} },
            # :except => [:updated_at, :created_at]
            # ])
        
        
    end

    def create
        post = Post.create(post_params)
    
        render json: post
    end
      
    def update
        post = Post.find(params[:id])
    
        post.update(post_params)
    
        render json: post, except: [:updated_at, :created_at]
    end
    
    def destroy
        post = Post.find(params[:id])
    
        post.destroy
    
        render json: post
    end
    
      private
    
    def post_params
        params.require(:post).permit(:user_id, :content, :user_caption)
    end
    

end
