class ApplicationController < ActionController::Base
    layout 'web'

    before_action :set_homepage
    before_action :set_navigation

    def after_sign_in_path_for(resource)
        admin_root_path
    end
    
    def after_sign_out_path_for(scope)
        login_path
    end

    private 

    def set_navigation
        @navigation = Navigation.all
    end

    def set_homepage
        @homepages = Homepage.all
    end
end
