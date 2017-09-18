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
    # binding.pry
    @item = Item.find(params[:id])
    redirect_to root_path
    # 合計 = (旧情報)updateアクションのfindから持ってきたidのカラムevaluate_price(@item = Item.find(params[:id])) + (新情報)evaluate_paramsのパラムスハッシュの入っているキーevaluate_priceに対応するvalue
    sum = @item.evaluate_price.to_i +  evaluate_params[:evaluate_price].to_i
    @item.update(evaluate_price: sum)
  end

  private
    def item_params
      params.require(:item).permit(:name, :body, :price, item_images_attributes: [:image], trade_attributes: [:trade_type, :days, :fee_type, :area]).merge(user_id: current_user.id, evaluate_price: 0)
    end

    def evaluate_params
     params.require(:item).permit(:evaluate_price)
    end
end
