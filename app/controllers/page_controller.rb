# frozen_string_literal: true

class PageController < ApplicationController
  before_action :authenticate_user!, only: [:account]

  def home
    @news = NewsApiHelper.call(country: I18n.locale, category: user_pref).res
  end

  def account; end

  private

  def user_pref
    if current_user && !current_user.preference.nil?
      current_user.preference
    else
      'general'
    end
  end
end
