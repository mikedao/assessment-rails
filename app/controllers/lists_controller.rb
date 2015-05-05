class ListsController < ApplicationController
  def index
    render json: List.all
  end

  def show
    render json: List.find(params[:id])
  end
end
