class MyPagesController < ApplicationController
  def index
  end

  def update
    binding.pry
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  def sell_list
    @items = current_user.items
  end

  def buy_list
  end
end
