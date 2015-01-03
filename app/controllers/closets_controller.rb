class ClosetsController < ApplicationController
  def show
    @closet = Closet.find(params[:id])
    @clothes = @closet.clothes.all
    @clothe = @closet.clothes.find(params[:id])
    @picture = @clothe.picture
  end
 
end
 