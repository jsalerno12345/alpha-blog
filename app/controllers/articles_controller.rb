class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def show 
    end

    def index
        @articles =  Article.all
    end

    def new
        @article = Article.new()
    end

    def create
        @article = Article.new(article_param)
        if @article.save
            flash[:notice] = "Article was created Sucesfully"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def edit
    end
    
    def update
        if @article.update(article_param)
            flash[:notice] = 'Article was updated suscesfully'
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article.destroy
        flash[:notice] = 'Article was successfully deleted'
        redirect_to root_path  # Redirect to articles index
      end
      
    private

    def set_article
        @article =  Article.find(params[:id])
    end

    def article_param
        params.require(:article).permit(:title, :description)
    end
    
end