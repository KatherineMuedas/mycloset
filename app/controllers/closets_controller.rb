class ClosetsController < ApplicationController
  def show


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
