class ListsController < ApplicationController
  before_action :set_list, only: [ :show ]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    if @list = List.create!(list_params)
      redirect_to lists_path
    else
      render :new, status: 422
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.expect(list: [ :name ])
  end
end
