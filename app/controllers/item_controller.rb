class ItemController < ApplicationController
    before_action :authenticate,:current_user
    before_action :finditem,only: [:delete]
   

    def show
        @cards=@current_user.items.all
        @user=@current_user

    end

    
   def rented 
    buyer=@current_user.id
    @rented=Item.where("buyer = ?",buyer).all

   end


    def sold 
        @pos=Item.find(params[:id])
        @pos.sold=true
        @pos.approval=false
        @pos.save
        redirect_to(show_path)
    end


    def new
    end


    def full
       @item=Item.find(params[:id])
       temp=@item.buyer
       @buyer=User.find(temp)
    end


    def create
        pit=@current_user.items.create(items_params)
        pit.approval=false
        pit.sold=false
        pit.buyer=1
        pit.save
        redirect_to(show_path) 
    end



    def delete
        @item.destroy
        redirect_to(show_path)
    end



private

def finditem
    @item=Item.find(params[:id])
end

def items_params
    @hash=params.require(:item).permit(:name,:location,:condition,:duration,:details,:price,:itemphoto)
    @temp=params.require(:itemphoto)
    @hash["itemphoto"]=@temp
   
   
    return @hash

end

end
