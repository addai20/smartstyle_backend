class CategoriesController < ApplicationController
  before_action :find_category, only: [:update]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
      @category = Category.create!(category_params)
      render json: @category
  end

  def update
    @category.update(category_params)
    if @category.save
      render json: @category, status: :accepted
    else
      render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @category = Category.all.find(params[:id])
      @category.destroy

    end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end

  def find_category
    @category = Category.find(params[:id])
  end
  end
