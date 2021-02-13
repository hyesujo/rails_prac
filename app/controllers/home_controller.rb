class HomeController < ApplicationController
    def index
        @posts = Post.all 
    end

    def write

    end
    def create
        post = Post.new
        post.title = params[:title]
        post.contents = params[:contents]
        post.save
        redirect_to '/index'
    end
    def show
        @id = params[:id]
    end
end
