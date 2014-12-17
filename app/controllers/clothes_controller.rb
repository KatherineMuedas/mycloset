class ClothesController < ApplicationController
  before_action :set_closet
  before_action :set_clothe, only:[:show]
  
  def dresses_index
    @clothes = Clothe.where(type_category: "Dresses" )
  end

  def skirts_index
    @clothes = Clothe.where(type_category: "Skirts" )
  end

  def pants_index
    @clothes = Clothe.where(type_category: "Pants" )
  end

  def tops_index
    @clothes = Clothe.where(type_category: "Tops" )
  end

  def jackets_index
    @clothes = Clothe.where(type_category: "Jackets" )
  end

  def sweaters_index
    @clothes = Clothe.where(type_category: "Sweaters" )
  end

  def blazers_index
    @clothes = Clothe.where(type_category: "Blazers" )
  end

  def jeans_index
    @clothes = Clothe.where(type_category: "Jeans" )
  end

  def jumpsuits_index
    @clothes = Clothe.where(type_category: "Jumpsuits" )
  end

  def shorts_index
    @clothes = Clothe.where(type_category: "Shorts" )
  end

   def new
    @categoriest = ["Dresses" , "Skirts" , "Pants" , "Tops" , "Jackets" , "Sweaters" , "Blazers" , "Jeans" , "Jumpsuits" , "Shorts"]
    @categoriess = ["Dirty" , "Clean" ]
    @clothe = @closet.clothes.new
  end
 
  def create
    @clothe = @closet.clothes.new(clothe_params)
    @clothe.user_id = current_user.id
    if @clothe.save
      redirect_to root_path, notice: 'Successfully created.'
    else
      render 'new', alert: 'Error'
    end
  end
  def show
    @clothes = @closet.clothes.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def clothe_params
    params.require(:clothe).permit(:name, :purchase_at, :state_category, :brand , :notes , :type_category, :closet_id, :user_id)
  end

  def set_closet
    @closet = Closet.find(params[:closet_id])
  end

  def set_clothe
    @clothe = @closet.clothes.find(params[:id])
  end

end
