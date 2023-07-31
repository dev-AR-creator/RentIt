class HomepageController < ApplicationController
  before_action :item_parms,only: [:update]

    def index
    end

    def dash
        @rent=Item.all
    end


   def itempage
    @stuff=Item.find(params[:id])
   end

    
def update
  
    @item.update({approval: true})
end

private

def item_parms
    @item=Item.find(params[:id])
  
end
    

end
