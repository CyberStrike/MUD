class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @adventures = Adventure.all
    respond_with(@adventures)
  end

  def show
    respond_with(@adventure)
  end

  def new
    @adventure = Adventure.new
    respond_with(@adventure)
  end

  def edit
  end

  def create
    @adventure = Adventure.new(adventure_params)
    @adventure.save
    respond_with(@adventure)
  end

  def update
    @adventure.update(adventure_params)
    respond_with(@adventure)
  end

  def destroy
    @adventure.destroy
    respond_with(@adventure)
  end

  private
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end

    def adventure_params
      params.require(:adventure).permit(:title, :description)
    end
end
