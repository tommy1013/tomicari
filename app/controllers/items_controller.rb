class ItemsController < ApplicationController
  def index
  end

  def new
    # binding.pry
    @item = Item.new
    @item.item_images.build
    # @trade = Trade.new
    binding.pry
    @item.trades.build
  end

  def create
    @item = Item.create(item_params)
      # binding.pry
    @transaction = Trande.create(trade_params)
    4.times { @item.item_images.build }
    redirect_to root_path
  end

  private
    def item_params
      params.require(:item).permit(:name, :body, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
    end
    def trade_params
      params.require(:trade).permit(:item_id, :trade_type, :days, :fee_type, :area)
    end
end
