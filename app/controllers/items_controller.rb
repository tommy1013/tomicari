class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    4.times{ @item.item_images.build }
    @item.build_trade
  end

  def create
    @item = Item.create(item_params)

    redirect_to root_path
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(evaluate_params)
    redirect_to root_path
  end

  private
    def item_params
      params.require(:item).permit(:name, :body, :price, item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area]).merge(user_id: current_user.id)
    end

    def evaluate_params
     params.require(:item).permit(:evaluate_price)
    end
end
