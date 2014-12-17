class ClosetsController < ApplicationController
  def show
    @closet = Closet.find(params[:id])
    @clothes = @closet.clothes.all
  end
end
 