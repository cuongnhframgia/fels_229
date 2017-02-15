class Admin::CategoriesController < ApplicationController
  before_action :logged_in_user
  before_action :verify_admin
  before_action :find_category, only: [:update, :edit, :destroy]

  def index
    @categories = Category.paginate page: params[:page]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t"add_success"
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit 	
  end

  def update
    if @category.update_attributes category_params
      flash[:success] = t ".update"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = t "delete_category"
    else
      flash[:danger] = t "wrong_category"
    end
    redirect_to admin_categories_path
  end

  private
  def category_params
    params.require(:category).permit :name
  end

  def find_category
    @category = Category.find_by id: params[:id]
    unless @category
      flash[:danger] = t "category_not_found"
      redirect_to admin_categories_path
    end
  end
end
