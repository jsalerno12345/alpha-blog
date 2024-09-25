class ArticlesController < ApplicationController
    def show 
        @article =  Article.find(params[:id]) #turns into an instance variable
    end

    def index
        @articles =  Article.all
    end
end 