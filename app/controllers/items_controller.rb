class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.item_images.build
    @transaction = Transaction.new
  end

  def create
    @item = Item.create(create_params)
    4.times { @item.item_images.build }
    redirect_to root_path
  end

  private
    def create_params
    params.require(:item).permit(item_images_attributes: [:image])
  end

end
