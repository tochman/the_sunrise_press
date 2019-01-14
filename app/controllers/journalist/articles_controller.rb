class Journalist::ArticlesController < ApplicationController

    def new
        @article = Article.new
        @categories = Category.all
    end

    def create
        @article = Article.create(article_params.merge(category: find_category).merge(user_id: current_user))
        if @article.persisted?
            redirect_to article_path(@article)
        else
            redirect_to new_journalist_article_path, notice: 'Every field needs to be filled in!'
        end
    end

    def edit
        @article = Article.find(params[:id])
        @categories = Category.all
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params.merge(category: find_category))
            redirect_to article_path(@article), notice: 'Updated successfully!'
        else
            redirect_to edit_journalist_article_path, notice: 'Every field needs to be filled in!'
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
