class ItemsController < ApplicationController

  def index
    @items = Item.order(:name)
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "Item was added."
      redirect_to items_path
    else
      flash.now[:danger] = @item.errors.full_messages.join("\n")
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "Item was updated."
      redirect_to items_path
    else
      flash[:danger] = "There was a problem updating the item."
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:success] = "Item was successfully destroyed."
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :description, :remove_image)
  end



end
