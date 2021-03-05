class UsersController < ApplicationController
  def new
     @user = User.new()
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      redirect_to home_url
    end
  end

  def create
    @user = User.new(user_params)
    @user.password = params[:password]
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "New User created."
      redirect_to '/conversations'
    else
      render 'new'
    end
  end

  private

  def user_params
    params.fetch(:user, {}).permit(
      :first_name, :last_name, :email, :phone,
      :password, :password_confirmation
    )
  end
end
