class FiguresController < ApplicationController
  def new
    @figure = Figure.new
  end

  def create
    figure = Figure.new(figure_params)
    figure.save
    redirect_to "/"
  end

  def index
    @figures = Figure.all
  end

  private
  def figure_params
    params.require(:figure).permit(:title, :body)
  end
end
