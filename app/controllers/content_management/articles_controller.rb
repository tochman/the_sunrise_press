class ContentManagement::ArticlesController < ApplicationController

    before_action :get_article, only: [:edit, :update]

    def new
        @article = Article.new
        @categories = Category.all
    end

    def create
        @article = Article.create(article_params.merge(category: find_category).merge(user_id: current_user.id))
        if @article.persisted?
            redirect_to article_path(@article)
        else
            redirect_to new_content_management_article_path, notice: 'Every field needs to be filled in!'
        end
    end

    def edit
        @categories = Category.all
    end

    def update
        if @article.update(article_params.merge(category: find_category))
            redirect_to article_path(@article), notice: 'Updated successfully!'
        else
            redirect_to edit_content_management_article_path, notice: 'Every field needs to be filled in!'
        end
    end

    private
    def get_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description, :content, :journalist)
    end

    def find_category
        Category.find(params[:article][:category_id])
    end
end
