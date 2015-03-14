class ClothesController < ApplicationController
  before_action :set_closet
  before_action :set_clothe, only:[:show, :edit , :update, :destroy]
  
  def new
    @categoriest = ["Dresses" , "Skirts" , "Pants" , "Tops" , "Jackets" , "Sweaters" , "Blazers" , "Jeans" , "Jumpsuits" , "Shorts"]
    @categoriess = ["Dirty" , "Clean" ]
    @clothe = @closet.clothes.new
    @picture = @clothe.build_picture
  end

  def create
    @clothe = @closet.clothes.new(clothe_params)
    @clothe.user_id = current_user.id
    if @clothe.save
      redirect_to @closet, notice: 'Successfully created.'
    else
      render 'new', alert: 'Error'
    end
  end
  def show
    @clothes = @closet.clothes.all
    @picture = @clothe.picture
  end

  def edit
    @picture = @clothe.picture
  end

  def update
    if @clothe.update_attributes(clothe_params)
      redirect_to closet_clothe_path(@closet.id,@clothe.id), notice: 'Successfully updated.'
    else
      render :edit
    end
  end

  def destroy
     @clothe.destroy
    redirect_to closet_path(current_user.closet.id)
  end

  private

  def clothe_params
    picture_attributes = [:id, :title, :description, :photo, :user_id]
    params.require(:clothe).permit(:name, :purchase_at, :state_category, :brand , :notes , :type_category, :closet_id, :user_id, picture_attributes: picture_attributes)
  end

  def set_closet
    @closet = Closet.find(params[:closet_id])
  end

  def set_clothe
    @clothe = @closet.clothes.find(params[:id])
  end

end
