class SessionsController < ApplicationController
  def new
  end

  def create
    @member = Member.where(email: user_params[:email]).first

    if @member && @member.authenticate(user_params[:password])
      session[:member_id] = @member.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end

  end

  def destroy
    session[:member_id] = nil
    redirect_to root_path
  end

# private method - we don't want anyone else to be able to grab the method
  private
  def member_params
    params.require(:member).permit(:email, :password)
  end
end
