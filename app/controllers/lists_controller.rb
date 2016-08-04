class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @task = Task.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def edit
  end





  private

  def list_params
    params.require(:list).permit(:name,:user_id)
  end
end
