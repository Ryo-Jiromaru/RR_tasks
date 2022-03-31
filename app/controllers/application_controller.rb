class ApplicationController < ActionController::API
    def login!
        session[:user_id] = @user.id
    end

    def current_user
        @current_user ||= user.find(session[:user_id] if session[:user_id])
    end
end
