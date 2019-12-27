class PageController < ApplicationController
  def home
    @news = NewsApiHelper.call(country: I18n.locale).res
  end
end
