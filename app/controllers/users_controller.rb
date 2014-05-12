class UsersController < ApplicationController

before_action :authenticate_user!, :redirect_if_not_correct_user!, except: :update  

  def show
    @user = User.find params[:id]
  end

  def edit
  	@user = User.find params[:id]
  end

  def update
  	@user = User.find params[:id]
  	@user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:encrypted_password]

  	if @user.save 
      redirect_to @user
  	else
  		render :edit
  	end

    private

      def safe_params
        params.require(:user).permit(:email)
      end

      def redirect_if_not_correct_user!
        redirect_to user_root_path unless correct_user?
      end

      def correct_user?
        current_user.id == params[:id].to_i
      end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy

    redirect_to users_url(@users)
  end

  def home 

  end
end