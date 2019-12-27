class PageController < ApplicationController
  before_action :authenticate_user!, only: [:account]

  def home
    @news = NewsApiHelper.call(country: I18n.locale, category: 'business').res
  end

  def account

  end
end
