# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :language_set

  def language_set
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
