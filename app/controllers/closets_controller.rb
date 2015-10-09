class ClosetsController < ApplicationController
  def index 
    if current_user
      redirect_to closet_path(current_user.closet.id)
    end
  end
  def show
    @closet = Closet.find(params[:id])
    if params[:type_category]
      @clothes = @closet.clothes.where(type_category: params[:type_category])
    else  
      @clothes = @closet.clothes.all
    end  
  end
 
end
 