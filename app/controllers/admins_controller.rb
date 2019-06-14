class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
   @admin = Admin.create(admin_params)
    if @admin.save
      log_in @admin
      flash[:success] = "Welcome to the Bear's Peanuts!"
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

  def admin_params
    params.require(:admin).permit(:username, :password, :password_confirmation)
  end
end
