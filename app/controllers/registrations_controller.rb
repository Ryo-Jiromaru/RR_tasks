class RegistrationsController < ApplicationController
    # サインアップ
    def create
        logger.debug("ポイント1")
        @user = User.new(registration_params)
        logger.debug("ポイント2")
        logger.debug(@user.inspect)
        logger.debug("ポイント3")
        if @user.save
            render json: { status: :created, user: @user}
            logger.debug("ポイント4")
            login!
            logger.debug("ポイント5")
            logger.debug("ポイント6")
        else
            logger.debug("ポイント7")
            render json: { statsu: 500 }
        end
    end

    private

    def registration_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
