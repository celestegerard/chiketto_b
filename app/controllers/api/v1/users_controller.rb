class Api::V1::UsersController < ApplicationController

  # skip_before_action :verify_authenticity_token

  def index
    @users = User.with_attached_avatar.all
    render json: @users
  end

  def new
    @user = User.new
  end

  def edit
  @user = User.find(params[:id])
end

  def create
    @user = User.new(user_params)

    @user.valid?
    puts @user.errors.full_messages

    if @user.save
      redirect_to @user
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
    redirect_to @user
  else
    render 'edit'
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy

  redirect_to users_path
end

private
  def user_params
    params.permit(:name, :avatar, :count, :id)
  end

end
