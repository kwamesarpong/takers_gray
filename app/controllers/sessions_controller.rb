class SessionsController < ApplicationController
  
  def new

  end

  def create
  	@user = User.find_by(national_id: params[:session][:national_id])

  	if @user && @user.authenticate(params[:session][:tel_number])
  	
  		render plain: 'yay'
  	else
  		flash[:danger] = 'buuuuuuuu'
  		
  		render 'new'
  	end

  end

  def destroy

  end

end
