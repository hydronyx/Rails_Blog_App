class MicropostsController < ApplicationController

	def create
    @user = User.find(params[:user_id])
    @micropost = @user.microposts.create(params[:micropost].permit(:content))
    redirect_to user_path(@user)
  end

def destroy
    @user = User.find(params[:user_id])
    @micropost = @user.microposts.find(params[:id])
    @micropost.destroy
    redirect_to user_path(@user)
  end



end
