
require "nyt_article_search/version"

module NytArticleSearch
  # Your code goes here...
end

class ArticleSearch
  attr_accessor :api_key

	include HTTParty

  def self.api_key
    @api_key = "9f7876895414dc78acc8fe1c9a0dbd03:16:63558649"
  end

  base_uri "http://api.nytimes.com/svc/search/v2/articlesearch"
  format :json

  def self.search(name)
    get('/search', :query => { :q => name, 'api-key' => @api_key })
  end


end
