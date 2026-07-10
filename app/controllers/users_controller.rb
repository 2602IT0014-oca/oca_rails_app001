class UsersController < ApplicationController
  def index
    @users = User.all
  end
 
  def new
    @user = User.new
  end
 
  def create
    user = User.new(user_params)
 
    if user.save
      redirect_to root_path
    else
      render :new
    end
  end
 
# app/controllers/users_controller.rb
def show
  # ビューの「@user_show」と名前を完全に一致させる
  @user_show = User.find(params[:id]) 
end
 
# app/controllers/users_controller.rb
def edit
  # ビューの「@user_edit」と名前を完全に一致させる！
  @user_edit = User.find(params[:id])
end
 
  private
 
  def user_params
    params.require(:user).permit(:first_name, :family_name)
  end
end
 