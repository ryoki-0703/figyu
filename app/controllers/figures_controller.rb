class FiguresController < ApplicationController
  def new
    @figure = Figure.new
  end

  def create
    figure = Figure.new(figure_params)
    figure.save
    redirect_to "root_path"
  end

  private
  def figure_params
    params.require(:figure).permit(:title, :body)
  end
end
