class ItemsController < ApplicationController
  before_action :set_item, only: %i[edit show update]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    4.times{ @item.item_images.build }
    @item.build_trade
  end

  def create
    # binding.pry
    @item = Item.create(item_params)
    redirect_to root_path
  end

  def edit
    4.times{ @item.item_images.build }
  end

  def show
    @user = User.find(@item.user_id)
  end

  def update
    # binding.pry
    @item.update(item_edit_params)
    redirect_to root_path
  end

  private
    def item_params
      params.require(:item).permit(:name, :body, :price, item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area]).merge(user_id: current_user.id, evaluate_price: 0)
    end
    def item_edit_params
      params.require(:item).permit(:name, :body, :price, item_attributes: [:item_id], item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area, :item_id, :id]).merge(user_id: current_user.id, evaluate_price: 0)
    end
    def set_item
      @item = Item.find(params[:id])
    end
end
