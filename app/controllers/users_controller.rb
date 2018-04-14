class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    #raise strong_params.inspect
    @user = User.new(strong_params)


    if  @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(strong_params)
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
  def strong_params
    params.require(:user).permit(:avatar, :name, :surname, :date, :gender, interests: [])
  end
end
