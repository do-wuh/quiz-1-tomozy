class GridsController < ApplicationController
  def index
    @grid = Grid.last
  end

  def new
    @grid = Grid.new
  end

  def update
    @grid = Grid.find(params[:id])
    @grid.update_attributes(grid_params)
    if @grid.invalid?
      flash[:error] = '<strong>SAY WUH!</strong>'
    end
    redirect_to root_path
  end

  private

  def grid_params
    params.require(:grid).permit(:name)    
  end
end