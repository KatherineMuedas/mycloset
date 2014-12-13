class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all
  end

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
    @clothe = current_user.clothes.new
    @closet = current_user.closet
    @clothe = @closet.clothes.build
  end

  def create
    @categories = ["Dresses" , "Skirts" , "Pants" , "Tops" , "Jackets" , "Sweaters" , "Blazers" , "Jeans" , "Jumpsuits" , "Shorts"]
    @categoriess = ["Dirty" , "Clean" ]
    @clothe = current_user.clothes.new(clothes_params)
 
    if @clothe.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def clothes_params
    params.require(:clothe).permit(:name, :purchase_at, :state_category, :brand , :notes , :type_category)
  end

end
