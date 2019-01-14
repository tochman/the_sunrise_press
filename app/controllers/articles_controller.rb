class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
        @categories = Category.all
    end

    def create
        @article = Article.create(article_params.merge(category: find_category))
        if @article.persisted?
            redirect_to article_path(@article)
        else
            redirect_to new_article_path, notice: 'Every field needs to be filled in!'
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :description, :content, :journalist)
    end

    def find_category
        Category.find(params[:article][:category_id])
    end

end
