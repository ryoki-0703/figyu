class FiguresController < ApplicationController
  def new
    @figure = Figure.new
  end

  def create
    figure = Figure.new(figure_params)
    figure.save
    redirect_to figure_path(figure.id)
  end

  def index
    @figures = Figure.all
  end

  def show
    @figure = Figure.find(params[:id])
  end

  private
  def figure_params
    params.require(:figure).permit(:title, :body)
  end
end
