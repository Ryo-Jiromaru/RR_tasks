class ApplicationController < ActionController::API
    # react
    # skip_before_action :verify_authenticity_token

    before_action :current_user

    # helper_method :login!, :current_user
    include ActionController::Cookies


    def login!
        # logger.debug("login!ヘルパーが走ってる")
        session[:user_id] = @user.id
        # logger.debug("▽session[:user_id]▽")
        # logger.debug(session[:user_id].inspect)
    end

    def current_user
        # logger.debug("current_userヘルパーが走ってる")
        # logger.debug("▽session[:user_id]▽")
        # logger.debug(session[:user_id])
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        # logger.debug("▽@current_user▽")
        # logger.debug(@current_user.inspect)
    end
end
