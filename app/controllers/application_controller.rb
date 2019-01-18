class ApplicationController < ActionController::Base
    before_action :get_categories, :set_locale

    private
    
    def get_categories
        @categories = Category.all
    end

    def set_locale
        I18.locale = params[:locale] || I18n.default_locale
    end
end


