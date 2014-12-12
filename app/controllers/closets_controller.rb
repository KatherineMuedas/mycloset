class ClosetsController < ApplicationController
  def show
    @closet = Closet.find(params[:id])
  end
end
