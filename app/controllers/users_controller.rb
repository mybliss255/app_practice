class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name:  params[:name],
                     email: params[:email])
    if @user.save
      flash[:notice] = "登録しました"
      redirect_to("/users/index")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name  = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "編集しました"
      redirect_to("/users/index")
    else
      render("users/edit")
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "削除しました"
    redirect_to("/users/index")
  end

  def login_form
  end

  def login
  end
end
