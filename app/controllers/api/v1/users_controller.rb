class Api::V1::UsersController < ApplicationController


  def index
    @users = User.with_attached_avatar.all
    render json: @users
  end

  def new
    @user = User.new
    render json: @users
  end

  def edit
  @user = User.find(params[:id])
end

  def create
    @user = User.new(user_params)

    @user.errors.empty?
    puts @user.errors.full_messages

    if @user.save
      render json: @users
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @users
  end

  def update
  @user = User.find(params[:id])

  if @user.update(user_params)
    @user = User.find(params[:id])
    render json: @users
  else
    render 'edit'
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy

end

private
  def user_params
    params.permit( :name, :avatar, :count, :id, :user )
  end

end
