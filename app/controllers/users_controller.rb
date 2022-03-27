class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcom, dear #{@user[:name]}, to Sample App"
      log_in @user
      redirect_to @user      # some code
    else
      #redirect_to action: :new
      render :new, status: :unprocessable_entity# doesn't work properly.
    end 
  end




  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
