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
      #make this not delete all info!
      render :new
    end

    def edit

    end
  end

  private
  def cat_params
    params[:cat].permit(:name, :sex, :color, :birth_date, :description)
  end

end
