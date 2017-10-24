class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_path
  end

  def shooting
  end

  private
   def user_params
    params.require(:user).permit(:nickname, :family_name, :name, :family_name_kana, :name_kana, :postal_code, :prefecture, :city, :town, :building_name, :phone_number, :card_number, :expiration_number, :security_code)
   end

   def set_user
     @user = User.find(params[:id])
   end
end
