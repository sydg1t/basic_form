class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
        all_posts = Post.all 
        render json: {post: all_posts}
    end
    def create 
        new_post = Post.create(username: params[:username],
        content: params[:content])
        render json: { posts: new_post }
    end
end
