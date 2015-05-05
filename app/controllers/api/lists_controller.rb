class Api::ListsController < ApplicationController
  def index
    render json: List.all
  end

  def show
    render json: List.find(params[:id])
  end

  def create
    @list = List.create(list_params)
    render json: @list
  end

  def destroy
    if List.find(params[:id]).destroy
      render json: {}, status: 200
    else
      render json: {}, status: 400
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :active)
  end
end
