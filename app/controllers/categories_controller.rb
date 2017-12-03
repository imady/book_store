class CategoriesController < ApplicationController
  def new
  	@category = Category.new
    @categories = Category.all
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
      flash[:notice] = "Category Added Successfully"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def index
    @categories = Category.all 
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @books = @category.books
  end
  
  def edit
  	@category = Category.find(params[:id])
  end

  def update
  	@category = Category.find(params[:id])
	  	if 	@category.update(category_params)
			flash[:notice] = "Updated Successfully"
			redirect_to categories_path
		end
  end

  def destroy
  	@category = Category.find(params[:id])
  	@category.destroy
	flash[:notice] = "delete Successfully"
	redirect_to categories_path
  end

  private
  def category_params
  	params.require(:category).permit(:name)
  end
end