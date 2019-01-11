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
        @article = Article.new(article_params)
        @article.update(category: find_category)
        @article.save
        redirect_to root_path
    end

    private
    def article_params
        params.require(:article).permit(:title, :description, :content, :journalist)
    end

    def find_category
        Category.find_by(id: params[:article][:category_id])
    end

end
