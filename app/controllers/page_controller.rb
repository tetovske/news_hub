class PageController < ApplicationController
  def home
    @news = NewsApiHelper.call(lang: 'ru', country: 'ru').res
  end
end
