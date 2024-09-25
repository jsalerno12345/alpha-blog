class ArticlesController < ApplicationController
    def show 
        @article =  Article.find(params[:id]) #turns into an instance variable
    end

    def index
        @articles =  Article.all
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to article_path(@article)
    end

    def new
    end

  
end