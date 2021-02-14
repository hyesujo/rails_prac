class HomeController < ApplicationController
    def index
        #여러개를 가지고옴
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
    def modify
        #1개의 데이터만 찾음
        @post = Post.find(params[:post_id])
    end
    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.contents = params[:contents]
        post.save
        redirect_to '/index'
    end
    def delete
        Post.destroy(params[:post_id])

        redirect_back(fallback_location:'/index')
    end
end 
