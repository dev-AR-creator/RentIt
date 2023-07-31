class ItemController < ApplicationController
    before_action :authenticate,:current_user
    before_action :finditem,only: [:delete]

    def show
        @cards=@current_user.items.all
    end

    def new

    end

    def full
        @item=Item.find(params[:id])
    end

    def create
        @current_user.items.create(items_params)
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
    params.permit(:name,:location,:condition,:duration,:details,:price)


end
end
