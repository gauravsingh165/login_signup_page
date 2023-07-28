class PasswordResetsController < ApplicationController
  def new 

  end
  def create
    @user =User.find_by(email: params[:email])
    if @user.present?
        PasswordMailer.reset(@user, @token).deliver_now
    end
    redirect_to root_path, notice: "if an account with that email was found,we have sent a link to rest your password"
     def edit
       @user =User.find_signed(params[:token],purpose: "password_reset")
     end
  end
end