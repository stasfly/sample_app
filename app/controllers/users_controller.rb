class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    #debugger
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Wellcome to the sample app!"
      redirect_to @user
    else
      flash.now[:warning] = "Please put the valid information."
      render :new, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
