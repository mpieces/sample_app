class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
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
  end

  def update
    if @item.update_attributes(item_params)
      flash[:success] = "Task was updated."
      redirect_to items_path
    else
      flash[:danger] = "There was a problem updating the item."
    end
  end

  def destroy
    @item.destroy
    flash[:success] = "Item was successfully destroyed."
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :description)
  end



end
