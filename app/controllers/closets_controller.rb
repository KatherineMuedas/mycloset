class ClosetsController < ApplicationController
  def show


  end

  def new
    @categories = ["Clothing" , "Accessories" , "Shoes"]
    @closet = current_user.build_closet
  end

  def create
    @categories = ["Clothing" , "Accessories" , "Shoes"]
    @closet = current_user.closet.new(closets_params)
 
    if @closet.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def closets_params
    params.require(:closet).permit(:category)
  end
end
