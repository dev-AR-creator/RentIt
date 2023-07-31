class SessionsController < ApplicationController

    def create
        if user=User.authenticate(params[:email],params[:pass])
            session[:user_id]=user.id
            redirect_to root_path,notice: "Login succesfull"
        else
            redirect_to res_path,notice: "login not successfull register"
         end
    end


    def destroy
        reset_session
        redirect_to root_path,notice: "logout sucessful"
    end

    def new
    end


end
