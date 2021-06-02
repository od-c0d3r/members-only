class PostsController < ApplicationController

    # skip_before_action :require_login, only: [:new, :create]
    
    def index
        @posts = Post.all
        
    end
    

    def new
        
    end

    def create
      @post = Post.new(user_params)
      if @post.save
      redirect_to index_path
      else
      render :new
      end
    end 

    def show
        @posts = Post.all
    end
    

    # private

    # def require_login
    #   unless logged_in?
    #     flash[:error] = "You must be logged in to access this section"
    #     redirect_to new_login_url # halts request cycle
    #   end
    # end

end
