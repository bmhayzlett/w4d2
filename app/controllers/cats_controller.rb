class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cats_url
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    unless @cat.nil?
      render :edit
    else
      render :new
    end
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    if @cat.update(cat_params)
      redirect_to cats_url
    else
      render :edit
    end
  end

  private
  def cat_params
    params[:cat].permit(:name, :sex, :color, :birth_date, :description)
  end

end
