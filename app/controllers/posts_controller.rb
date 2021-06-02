class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]
    
    def index
        @posts = Post.all
        
    end
    

    def new
      @posts = Post.new  
    end

    def create
      @post = current_user.posts.new(user_params)
      if @post.save
      redirect_to root_path
      else
       render :new
      end
    end 

    def show
        @posts = Post.all
    end
    

    private

     def user_params
       params.require(:post).permit(:title, :body, :id)
     end
end
