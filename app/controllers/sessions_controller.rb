class SessionsController < ApplicationController
    def new
      
    end
    def create
        user=User.find_by(email: params[:session][:email])
        # debugger
        if user.present? && user.authenticate(params[:session][:password])
            session[:user_id]=user.id
            redirect_to root_path , notice: "Logged in successfully"
        else 
            flash[:alert]="invalid email or password"
            render :new
        end
    end
    def destroy
      session[:user_id]= nil
      redirect_to root_path,notice: "Logged out"
    end
end