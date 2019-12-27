require 'news-api'

class NewsApiHelper
  include Interactor

  API_KEY = "ab58366680454fb0b5600af0a6f9f564"

  def call
    init_api
    context.res = get_headers(context.country, context.category)
  end

  private 

  def init_api
    @api = News.new(API_KEY)
  end

  def get_headers(country, category)
    @api.get_top_headlines(country: country, category: category)
  end
end