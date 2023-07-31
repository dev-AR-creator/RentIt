class RegisteruserController < ApplicationController
    before_action :set_user,only: [:profile]
    def index
    end

    def create
        user=User.new
        user.name=params[:name]
        user.email=params[:email]
        user.pass=params[:pass]
        user.save
        

        redirect_to(form_path(id: user.id))

    end
    def About
    end

    def profile
        
        @user.build_profile()
        @user.profile.location=params[:location]
        @user.profile.about=params[:about]
        @user.profile.save
        redirect_to(home_path)
        
        
    end


private

def set_user
   @user=User.find(params[:id]) 
end

end
