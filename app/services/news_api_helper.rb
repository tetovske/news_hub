require 'news-api'

class NewsApiHelper
  include Interactor
  API_KEY = "ab58366680454fb0b5600af0a6f9f564"

  def self.call
     api = News.new(API_KEY)
     api.get_top_headlines(language: 'ru', country: 'ru')
  end
end