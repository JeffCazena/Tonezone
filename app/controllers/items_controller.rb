class ItemsController < ApplicationController


before_action :authenticate_user!


  def index
    @items = Item.all
  end

  def show
    @item = Item.find params[:id]
    @itempic = ItempicUploader.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.create(safe_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    @item = Item.find params[:id]

    if @item.update(safe_params)
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find params[:id]
    @item.destroy

    redirect_to items_url(@items)
  end

  private

    def safe_params
      params.require(:item).permit(:name, :description, :itempic)
    end

end
