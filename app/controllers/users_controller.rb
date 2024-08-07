class UsersController < ApplicationController
  def edit
    @user=User.find(params[:id])
  end
  
  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end 

  def show
    @user=User.find(params[:id])
    @post_images=@user.post_images.page(params[:pa])
  end
  
  private
  
  def user_params
    paramd.require(:user).permit(:name,:profile_image)
  end
end
