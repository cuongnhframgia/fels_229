class Admin::WordsController < ApplicationController
  before_action :load_categories
  before_action :find_word, except: [:index, :create, :new]

  def index
  end

  def new
    @word = Word.new
    Settings.answers_num.times{@word.answers.build}
  end

  def create
    @word = Word.new words_params
    @word.save
    respond_to do |format|
      format.js
    end 	
  end

  def edit
  end

  def update
    if @word.update_attributes words_params
      flash[:success] = t ".update"
      redirect_to new_admin_word_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def words_params
    params.require(:word).permit :content, :category_id,
      answers_attributes: [:content, :is_correct, :_destroy, :id]
  end

  def load_categories
    @categories = Category.all.map{|category| [category.name, category.id]}
  end

  def find_word
    @word = Word.find_by id: params[:id]
    unless @word
      flash[:danger] = t "word_not_found"
      redirect_to admin_categories_path
    end
  end
end
