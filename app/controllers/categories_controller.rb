class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @transactions = @category.transactions
    redirect_to categories_path
  end


  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.build(category_params)
    if @category.save
      flash[:success] = 'Category successfully created!'
      redirect_to categories_path
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:success] = 'Category successfully deleted!'
    else
      flash[:error] = 'Failed to delete category.'
    end
    redirect_to categories_path
  end


  def category_params
    params.require(:category).permit(:title, :icon)
  end
end
