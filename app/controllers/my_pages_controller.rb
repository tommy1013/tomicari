class MyPagesController < ApplicationController
  def index
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    # 合計 = (旧情報)updateアクションのfindから持ってきたidのカラムevaluate_price(@item = Item.find(params[:id])) + (新情報)evaluate_paramsのパラムスハッシュの入っているキーevaluate_priceに対応するvalue
    sum = @item.evaluate_price.to_i +  evaluate_params[:evaluate_price].to_i
    @item.update(evaluate_price: sum)
     redirect_to root_path
  end

  def sell_list
    @items = current_user.items
  end

  def buy_list
  end
end
