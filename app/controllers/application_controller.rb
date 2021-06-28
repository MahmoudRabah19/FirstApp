class ApplicationController < ActionController::Base
  before_action :set_locale

    def set_locale
      # Remove inappropriate/unnecessary ones
          I18n.locale = params[:locale] || # Request parameter
                    session[:locale] || # Current session
                    extract_locale_from_accept_language_header || # Language header - browser config
                    I18n.default_locale # Set in your config files, english by super-default
    end

    def default_url_options
      {locale: I18n.locale}
    end

end    
