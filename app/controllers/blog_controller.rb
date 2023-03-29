class BlogController < ApplicationController
    def index
        @blog = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end


    
end


