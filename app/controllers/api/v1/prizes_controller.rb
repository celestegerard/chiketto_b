class Api::V1::PrizesController < ApplicationController

  def index
    # @prizes = Prize.all
    @prizes = Prize.with_attached_prizeimage.all
    render json: @prizes
  end

  def new
    @prize = Prize.new
    render json: @prizes
  end

  def edit
  @prize = Prize.find(params[:id])
end

  def create
    @prize = Prize.new(prize_params)

    if @prize.save
        render json: @prizes
    else
      render 'new'
      render json: @prizes
    end
  end

  def show
    @prize = Prize.find(params[:id])
    render json: @prizes
  end

  def update
  @prize = Prize.find(params[:id])

  if @prize.update(prize_params)
    render json: @prizes
  else
    render 'edit'
  end
end

def destroy
  @prize = Prize.find(params[:id])
  @prize.destroy

end

  private
  def prize_params
    params.permit(:title, :price, :prizeimage, :prize, :parent_id)
  end

end
