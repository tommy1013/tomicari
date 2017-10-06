class ItemsController < ApplicationController
  before_action :set_item, only: %i[edit show update buy buy_finish]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @item.build_trade
     4.times{ @item.item_images.build }
  end

  def create
    @item = Item.create(item_params)
    redirect_to root_path
  end

  def edit
    num = 4 - @item.item_images.count
    unless num == 0
      num.times{ @item.item_images.build }
    end
  end

  def show
    @user = User.find(@item.user_id)
  end

  def update
    @item.update(item_edit_params)
    redirect_to root_path
  end

  def buy
  end

  def buy_finish
    @item.update(buy: 1)
  end

  private

    def item_params
      param = params.require(:item).permit(:name, :body, :price, :category, :state, item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area]).merge(user_id: current_user.id, evaluate_price: 0)
      param["item_images_attributes"].delete_if{ |a| a == nil }
      return param
    end

    def item_edit_params
      params.require(:item).permit(:name, :body, :price, :category, :state, item_attributes: [:item_id], item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area, :item_id, :id]).merge(user_id: current_user.id, evaluate_price: 0)
    end

    def set_item
      @item = Item.find(params[:id])
    end
end

