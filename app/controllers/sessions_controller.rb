class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    #if user && user.authenticate(params[:session][:password]) is equal to:
    if user&.authenticate(params[:session][:password])
      log_in user
      flash[:notice] = 'Your log in is success!'
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    logout
    redirect_to root_url
  end

end
