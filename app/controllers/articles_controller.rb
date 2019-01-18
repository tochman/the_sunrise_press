class ArticlesController < ApplicationController
    def index
        @articles = Article.all

        if params[:category]
            @category_selected = 'params[:category]'
            @category_news = NewsFeedService.get_feed('params[:category].downcase', 'bbc-news', 'bbc.co.uk', 4) 
        else
            @category_selected = "All"
            @category_news = NewsFeedService.get_feed('all', 'bbc-news', 'bbc.co.uk', 4) 
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
end
