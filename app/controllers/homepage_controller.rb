

class HomepageController < ApplicationController
  before_action :item_parms,only: [:update]

def index
end


def dash  
   @rent=Item.where(approval: false ).all
end


def itempage
  @stuff=Item.find(params[:id])
  @user=User.find(@stuff.user_id)
    
end

    
def update
  @item.approval=true
  @item.buyer=session[:user_id]
  @item.save
  redirect_to dash_path
end


private

def item_parms
  @item=Item.find(params[:id])
end
    

end
