class ContentManagement::ArticlesController < ApplicationController

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
        @article = Article.create(article_params.merge(category: find_category).merge(user_id: current_user.id))
        if @article.persisted?
            redirect_to article_path(@article)
        else
            redirect_to new_content_management_article_path, notice: 'Every field needs to be filled in!'
        end
    end

    def edit
        @article = Article.find(params[:id])
        @categories = Category.all
    end

    def update
        @article = Article.find(params[:id])

        if params[:toggle_publish] == 'true'
            publish_article
            redirect_to content_management_articles_path
        elsif @article.update(article_params.merge(category: find_category))
                redirect_to article_path(@article), notice: 'Updated successfully!'
        else
            redirect_to edit_content_management_article_path, notice: 'Every field needs to be filled in!'
        end
        
    end




    private

    def article_params
        params.require(:article).permit(:title, :description, :content, :journalist)
    end

    def find_category
        Category.find(params[:article][:category_id])
    end

    def publish_article
        @article.update_attribute(:published, true)
    end
    
end
