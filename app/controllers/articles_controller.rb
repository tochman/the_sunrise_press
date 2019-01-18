class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        @category_news = NewsFeedService.get_feed('all', 'cnn', 'http://us.cnn.com', 4) 
    end
    
    def show
        @article = Article.find(params[:id])
    end
end
