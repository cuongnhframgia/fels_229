class WordsController < ApplicationController
  before_action :logged_in_user, only: :index

  def index
    @categories = Category.all
    
    if params[:category].present?
      @words = Word.filter_by_category params[:category]
    else
      @words = Word.all
    end
  end

  def show
  	@word = Word.find_by id: params[:id]
  end
end
