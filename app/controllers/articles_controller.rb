class ArticlesController < ApplicationController
    def show 
        @article =  Article.find(params[:id]) #turns into an instance variable
    end
end 