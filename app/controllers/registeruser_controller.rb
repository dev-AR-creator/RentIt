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
        @user.create_profile(pro_params)
        redirect_to(home_path)  
    end


private

    def pro_params
        @hash=params.require(:profile).permit(:location,:about,:items,:gender,:phone,:Address,:dateofbirth)
        @hashall=params.require(:profilepic)
        @hash["profilepic"]=@hashall
        return @hash

        return @hash
    end

    def set_user
        #temp=params.require(:profile).permit(:id)
        @user=User.find(params[:id]) 
    end

end
