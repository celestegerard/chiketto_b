class PrizesController < ApplicationController

  def new
  end

  def create
    
    @prize = Prize.new(prize_params)

  @prize.save
  redirect_to @prize
  end

  private
  def prize_params
    params.require(:prize).permit(:title, :text)
  end

end
