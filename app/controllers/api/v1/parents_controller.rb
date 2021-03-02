class Api::V1::ParentsController < ApplicationController


  def index
    @parents = Parent.with_attached_avatar.all
    render json: @parents
  end

  def new
    @parent = Parent.new
  end

  def edit
  @parent = Parent.find(params[:id])
end

  def create
    @parent = Parent.new

    @parent.errors.empty?
    puts @parent.errors.full_messages

    if @parent.save
      render json: @parents
    else
      render 'new'
    end
  end

  def show
    @parent = Parent.find(params[:id])
    render json: @parents
  end

  def update
  @parent = Parent.find(params[:id])

  if @parent.update(parent_params)
    @parent = Parent.find(params[:id])
    render json: @parents
  else
    render 'edit'
  end
end

def destroy
  @parent = Parent.find(params[:id])
  @parent.destroy

end

private
  def parent_params
    params.permit( :name, :avatar, :googleid, :parent)
  end

end
