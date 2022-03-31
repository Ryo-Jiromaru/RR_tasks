class RegistrationsController < ApplicationController
    # サインアップ
    def create
        @user = User.new(registration_params)

        if @user.save
            login!
            render json: { status: :created, user: @user}
        else
            render json: { statsu: 500 }
        end
    end

    private

    def registration_params
        params.require(:user).permit(:email, :password, password_confirmation)
    end
end
