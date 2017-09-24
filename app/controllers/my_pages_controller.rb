class MyPagesController < ApplicationController
  def index
  end

  def sell_list
    @items = current_user.items
  end

  def buy_list
  end
end
