class ApplicationController < ActionController::Base
    before_action :fetch_user
    # before_action :check_for_admin

    private
    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def check_for_login 
        redirect_to login_path unless @current_user.present?
    end

    def check_for_admin 

        unless (@current_user.present? && @current_user.admin?)
            redirect_to denied_path 
        end
    end
end
