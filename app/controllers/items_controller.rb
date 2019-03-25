class ItemsController < ApplicationController
  before_action :find_item, only: [:update]

  def index
    @items = Item.all
    render json: @items
  end

  def create
      @item = Item.create!(item_params)
      render json: @item
  end

  def update
    @item.update(item_params)
    if @item.save
      render json: @item, status: :accepted
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @item = Item.all.find(params[:id])
      @item.destroy

    end

  private

  def item_params
    params.require(:item).permit(:name, :body_part, :img_url)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
