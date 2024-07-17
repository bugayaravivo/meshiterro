class UsersController < ApplicationController
  def edit
  end

  def show
    @user=User.find(params[:])
    @post_image=@user.post_images
  end
end
