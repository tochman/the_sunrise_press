require 'news-api'
require 'json'
require 'date'

module NewsFeedService
  
  def self.get_feed(query, source, domain, pagesize)
    newsapi = News.new("aa0deabbbff3418f9ed23311ef0c9ee1") 
    newsapi.get_everything(q: query,
                            sources: source,
                            domains: domain,
                            pageSize: pagesize,
                            language: 'en')                 
  end
end