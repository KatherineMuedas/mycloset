class ClosetsController < ApplicationController
  def show
    @closet = Closet.find(params[:id])
    if params[:type_category]
      @clothes = @closet.clothes.where(type_category: params[:type_category])
    else  
      @clothes = @closet.clothes.all
    end  
  end
 
end
 