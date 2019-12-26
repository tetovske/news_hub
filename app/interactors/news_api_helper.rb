require 'news-api'

class NewsApiHelper
  include Interactor

  before :get_news

  API_KEY = "ab58366680454fb0b5600af0a6f9f564"

  def get_news
    init_api
    context.res = get_headers(context.lang, context.country)
  end

  private 

  def init_api
    @api = News.new(API_KEY)
  end

  def get_headers(lang, country)
    @api.get_top_headlines(language: lang, country: country)
  end
end